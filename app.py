import os

from flask import Flask, render_template, request, flash, redirect, session, g
from flask_debugtoolbar import DebugToolbarExtension
from sqlalchemy.exc import IntegrityError

from forms import UserAddForm
from models import db, connect_db, User, Recipe, Tool, User, UserIngredient
from models import Ingredient, RecipeIngredient, UserTool, Favorite

CURR_USER_KEY = "curr_user"

app = Flask(__name__)

# Get DB_URI from environ variable (useful for production/testing) or,
# if not set there, use development local db.
app.config['SQLALCHEMY_DATABASE_URI'] = (
    os.environ.get('DATABASE_URL', 'postgres:///quixr'))

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SQLALCHEMY_ECHO'] = False
app.config['DEBUG_TB_INTERCEPT_REDIRECTS'] = True
app.config['SECRET_KEY'] = os.environ.get('SECRET_KEY', "it's a secret")
toolbar = DebugToolbarExtension(app)

connect_db(app)




##############################################################################
# User signup/login/logout


@app.before_request
def add_user_to_g():
    """If we're logged in, add curr user to Flask global."""

    if CURR_USER_KEY in session:
        g.user = User.query.get(session[CURR_USER_KEY])

    else:
        g.user = None

    


def do_login(user):
    """Log in user."""

    session[CURR_USER_KEY] = user.id


def do_logout():
    """Logout user."""

    if CURR_USER_KEY in session:
        del session[CURR_USER_KEY]

@app.route('/signup', methods=["GET", "POST"])
def signup():
    """Handle user signup.

    Create new user and add to DB. Redirect to home page.

    If form not valid, present form.

    If the there already is a user with that username: flash message
    and re-present form.
    """

    form = UserAddForm()

    if form.validate_on_submit():
        try:
            user = User.signup(
                username=form.username.data,
                password=form.password.data,
                email=form.email.data,
                image_url=form.image_url.data or User.image_url.default.arg,
            )
            db.session.commit()

        except IntegrityError:
            flash("Username already taken", 'danger')
            return render_template('user/signup.html', form=form)

        do_login(user)

        return redirect("/")

    else:
        return render_template('users/signup.html', form=form)


@app.route('/login', methods=["GET", "POST"])
def login():
    """Handle user login."""

    form = LoginForm()

    if form.validate_on_submit():
        user = User.authenticate(form.username.data,
                                 form.password.data)

        if user:
            do_login(user)
            flash(f"Hello, {user.username}!", "success")
            return redirect("/")

        flash("Invalid credentials.", 'danger')

    return render_template('user/login.html', form=form)


@app.route('/logout')
def logout():
    """Handle logout of user."""

    do_logout()

    return redirect('/')


#############################################################
# basic nav routes

@app.route('/')
def home():
    
    if g.user:
        return render_template('user_home.html') #TODO: create template

    return render_template('home.html') #TODO: create template


@app.route('/search', methods=["GET", "POST"])
def search():
    
    if request.method == 'POST':
        
        if 'seen_list' in session:
            del session['seen_list']
        if 'id_list' in session:
            del session['id_list']
        
        ingredient = request.form.get('ingredient')
      
        session['id_list'] = get_recipe_ids_with_ingredient(ingredient)
        return redirect('display/results')
    else:
        return render_template('search.html')
    


@app.route('/ingredients_tools', methods=["GET", "POST"])
def ingredients_and_tools_list():

    #TODO: stuff
    pass

#########################################################
# displays

@app.route('/display/results')
def results():
    results = []
    if 'seen_list' in session:
        seen_list = set(session['seen_list'])
    else:
        seen_list = set()
        
    if 'id_list' in session:
        id_list = session['id_list'] 
    else:
        id_list = None
    
    if id_list:
        count = 0
        while (count < 10):
            if id_list:
                id = id_list.pop(0)
                if id not in seen_list:
                    results.append(get_full_recipe_from_id(id))
                    seen_list.add(id)
                    count += 1
            else:
                break
    else:
        results = None
    
    session['id_list'] = id_list
    session['seen_list'] = list(seen_list) #TODO:


    return render_template('display_results.html', results=results)

@app.route('/display/recipe/<int:id>')
def recipe(id):

    #TODO: stuff
    pass

########################################################
# user stuff

@app.route('/user/favorites')
def favorites_list():

    #TODO: stuff
    pass

@app.route('/user/ingredients')
def ingredients_tools():

    #TODO: stuff
    pass

@app.route('/user/preferences')
def preferences():

    #TODO: stuff
    pass

###########################################################




###########################################################
# Logic calls
###########################################################


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
            for recipe in RecipeIngredient.query.filter(RecipeIngredient.ingredient_id==ing.id).all():
                recipe_list.append(recipe.recipe_id) 
        return recipe_list

    else:
        return None

def get_full_recipe_from_id(id):
    '''
    Takes a recipe id, returns the full recipe as a dict
    '''
    recipe = {}
    recipe_info = Recipe.query.filter(Recipe.id==id).first()
    ingredient_list = RecipeIngredient.query.filter(RecipeIngredient.recipe_id==id).all()
    recipe['id'] = id
    recipe['name'] = recipe_info.name
    recipe['category'] = recipe_info.category
    recipe['process_EN'] = recipe_info.process_EN
    recipe['process_ES'] = recipe_info.process_ES
    recipe['process_FR'] = recipe_info.process_FR
    recipe['process_DE'] = recipe_info.process_DE
    recipe['process_IT'] = recipe_info.process_IT
    recipe['image_url'] = recipe_info.image_url
    recipe['alcoholic'] = recipe_info.alcoholic
    recipe['created_on'] = recipe_info.created_on
    ing_count = 0
    ingredients = {}
    for ingredient in ingredient_list:
        ing_count += 1
        ingredient_obj = Ingredient.query.filter(Ingredient.id==ingredient.ingredient_id).first()
        ingredients[f'ingredient{ing_count}'] = ingredient_obj.name
        ingredients[f'measure{ing_count}'] = ingredient.measurement

    recipe['ingredients'] = ingredients
    return recipe
