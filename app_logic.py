
def user_can_make(recipe, ingredients, can_miss=0): #TODO: ingredients and can_miss global?
    """Takes a list drink recipe and compares it to a list
    of ingredients the user has on hand. 
    Accepts an additional parameter of how many items can be
    missing from the users ingredients, default to 0
    
    Returns True or False"""
    misses = 0
    for i in range(1,16):
        if recipe[f'strIngredient{i}']:
            if recipe[f'strIngredient{i}'] not in ingredients:
                miss += 1
                if miss > can_miss:
                    return False
        else:
            return True


def fetch_responses(response, seen_list, num_to_return=10): #TODO: make seen_list global?
    """Takes a response object from the API and a 
    list of recipe ids that have already been checked. 
    Also can accept a paramter of how many makeable 
    recipes to return, default to 10
    
    Returns a list of drink objects (of length 
    num_to_return) of drinks user could create"""

    results = 0
    result_list = {}
    for drink in response['drinks']:
        if drink['idDrink'] not in seen_list:
            recipe = getRecipe(drink['idDrink'])
            if user_can_make(recipe):
                result_list[drink['idDrink']] = recipe
                seen_list.append(drink['idDrink'])
                results += 1
                if results == num_to_return:
                    return result_list
            else:
                seen_list.append(drink['idDrink'])


#psuedo-code
'''
for ingredient in list:
    query ingredient from ingredients.name
    compile list of ingredient ids

logic type #1:
#this code can be used with a list of 1 id (general search)
for id in ingredient ids:
    query recipe ids with ingredient in recipe 
    compile containing list

use count(?) to compile a weighted list 
(how many times an id appears will mean how many ingredients listed it contains)

logic type #2:
#Again this section of code can be used with a list of 1
for id in ingredient ids:
    query recipe ids with ingredient in recipe
    compile containing set

for id in set:
    pull full recipe
    create dict for recipe
    include item how many ingredients match
'''


def get_recipe_ids_with_ingredient(ingredient):
'''
Takes an ingredient name, searches the database, returns a list of
recipe ids that use provided ingredient.
Returns None if no match
'''

    ingredient_list = Ingredient.query.filter(Ingredient.name.ilike(ingredient)).all()
    if len(ingredient_list) >= 1:
        recipe_list = []
        for ing in ingredient_list:
            recipe_list.extend(recipe.recipe_id) for recipe in RecipeIngredient.query.filter(ingredient_id=ing.id).all()
        return recipe_list

    else:
        return None

def get_full_recipe_from_id(id):
    '''
    Takes a recipe id, returns the full recipe as a dict
    '''
    recipe = {}
    recipe_info = Recipe.query.filter(id=id).first()
    ingredient_list = RecipeIngredient.query.join(Recipe.ingredients).filter(recipe_id=id).all()
    recipe['id'] = id
    recipe[k] = v for k,v in recipe_info
    for count, ingredient, measure in enumerate(ingredient_list):
        ingredients[f'ingredient{count}'] = ingredient
        ingredients[f'measure{count}'] = measure
    recipe['ingredients'] = ingredients

    return recipe


    
        