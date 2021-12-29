import requests
from models import *
from keys.api_key import api_key
from app import app

connect_db(app)

db.drop_all()
db.create_all()

MAX_INGREDIENTS = 15 # API provides data slots for up to 15 ingredients, 
                     # even when they're not all being used



def do_ingredients_exist(drink):
    for i in range(1, MAX_INGREDIENTS + 1): #ingredient list is 1-indexed
        ingredient = drink[f'strIngredient{i}']
        if not ingredient:
            return True
        exists = Ingredient.query.filter(Ingredient.name == ingredient).first()
        if not exists:
            return False
    return True

def create_ingredients(drink):
    for i in range(1, MAX_INGREDIENTS + 1): #ingredient list is 1-indexed
        ingredient = drink[f'strIngredient{i}']
        if ingredient:
            exists = Ingredient.query.filter(Ingredient.name == ingredient).first()
            if not exists:
                new_ingredient = Ingredient(name=ingredient)
                db.session.add(new_ingredient)
                db.session.commit()

def fix_instructions(instr):
    if instr is not None:
        return instr.replace('\\r', '')
    else:
        return 'Not yet provided'

def fix_url(url):
    return url.replace('\\', '')

def is_alcoholic(str):
    return str.lower() == 'alcoholic'

def create_recipe(drink):

    new_recipe = Recipe(
                        id=drink['idDrink'],
                        name=drink['strDrink'],
                        category=drink['strCategory'],
                        process_EN=fix_instructions(drink['strInstructions']),
                        process_ES=fix_instructions(drink['strInstructionsES']),
                        process_FR=fix_instructions(drink['strInstructionsFR']),
                        process_DE=fix_instructions(drink['strInstructionsDE']),
                        process_IT=fix_instructions(drink['strInstructionsIT']),
                        image_url=fix_url(drink['strDrinkThumb']),
                        alcoholic=is_alcoholic(drink['strAlcoholic']),
                        created_on=drink['dateModified']
    )

    try:
        db.session.add(new_recipe)
        db.session.commit()
        print("drink added")
    except Exception as err:
        print('error', err)


def add_recipe_ingredients_relationships(drink):
    i = 1
    while (i <= MAX_INGREDIENTS):
        ingredient = drink[f'strIngredient{i}']
        if ingredient:
            try:
                db_ingredient = Ingredient.query.filter(Ingredient.name == ingredient).one()
                already_exists = RecipeIngredient.query.filter(RecipeIngredient.recipe_id == drink['idDrink']).filter(RecipeIngredient.ingredient_id==db_ingredient.id).first()
                if not already_exists:
                    new_recipe_ingredient = RecipeIngredient(
                                                            recipe_id=drink['idDrink'],
                                                            ingredient_id=db_ingredient.id,
                                                            measurement='Not provided, use judgement' if not drink[f'strMeasure{i}'] else drink[f'strMeasure{i}']
                    )
                    db.session.add(new_recipe_ingredient)
                    db.session.commit()
                    print("added #", i)
                    i += 1
                else:
                    i += 1
                    continue
            except Exception as err:
                print('error', err)
                return False
        else:
            break
        
    return True




response = requests.get(f'https://www.thecocktaildb.com/api/json/v2/{api_key}/search.php?s=')
response_obj = response.json()
drinks = response_obj['drinks']

for drink in drinks:
    if not do_ingredients_exist(drink):
        create_ingredients(drink)

    create_recipe(drink)

    if add_recipe_ingredients_relationships(drink):
        print('relationships added successfully')
    else:
        print('there was a problem with drink id: ', drink['idDrink'])
    
