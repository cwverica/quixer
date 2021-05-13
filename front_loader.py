import requests
from models import *
from keys.api_key import api_key
from app import app

connect_db(app)

db.drop_all()
db.create_all()


# print('*' * 50)
# print(len(drinks))
# print(len(drinks[0]))


def do_ingredients_exist(drink):
    for i in range(1,16):
        ingredient = drink[f'strIngredient{i}']
        if not ingredient:
            return True
        exists = Ingredient.query.filter(Ingredient.name == ingredient).first()
        if not exists:
            return False
    return True

def create_ingredients(drink):
    for i in range(1,16):
        ingredient = drink[f'strIngredient{i}']
        if ingredient:
            exists = Ingredient.query.filter(Ingredient.name == ingredient).first()
            if not exists:
                new_ingredient = Ingredient(name=ingredient)
                db.session.add(new_ingredient)
                db.session.commit()

def fix_instrucions(instr):
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
                        process_EN=fix_instrucions(drink['strInstructions']),
                        process_ES=fix_instrucions(drink['strInstructionsES']),
                        process_FR=fix_instrucions(drink['strInstructionsFR']),
                        process_DE=fix_instrucions(drink['strInstructionsDE']),
                        process_IT=fix_instrucions(drink['strInstructionsIT']),
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
    for i in range(1,16):
        ingredient = drink[f'strIngredient{i}']
        if ingredient:
            try:
                db_ingredient = Ingredient.query.filter(Ingredient.name == ingredient).one()
                new_recipe_ingredient = RecipeIngredient(
                                                        recipe_id=drink['idDrink'],
                                                        ingredient_id=db_ingredient.id,
                                                        measurement='Not provided, use judgement' if not drink[f'strMeasure{1}'] else drink[f'strMeasure{1}']
                )
                db.session.add(new_recipe_ingredient)
                db.session.commit()

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
    



# for drink in response_obj['drinks']:
#     for attr,val in drink.items():
#         print(attr,val)

# print(drinks[0]['strDrink'])
# for i in range(1,16):
    # print(i, end=" => ")

    # print(drinks[0][f'strIngredient{i}'], end=': ')
    # print(drinks[0][f'strMeasure{i}'])