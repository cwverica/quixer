
def user_can_make(recipe, ingredients, can_miss=0): #TODO: ingredients and can_miss global?
    """Takes a list drink recipe and compares it to a list
    of ingredients the user has on hand. 
    Accepts an additional parameter of how many items can be
    missing from the users ingredients, default to 0
    
    Returns True or False"""
    misses = 0
    for (i=1; i<=15; i++):
        if recipe[f'strIngredient{i}']:
            if recipe[f'strIngredient{i}'] not in ingredients:
                miss++
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
                results++
                if results == num_to_return:
                    return result_list
            else:
                seen_list.append(drink['idDrink'])



