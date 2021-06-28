import os
import math

from flask import Flask, render_template, request, flash, redirect, session, g, jsonify
from flask_debugtoolbar import DebugToolbarExtension
from sqlalchemy.exc import IntegrityError

from forms import UserAddForm, LoginForm
from models import db, connect_db, User, Recipe, User, Ingredient
from models import UserIngredient, RecipeIngredient, Favorite

try:
    from keys.secret_key import SECRET_KEY
except:
    SECRET_KEY = "This_is_sekret"

CURR_USER_KEY = "curr_user"

app = Flask(__name__)


# Get DB_URI from environ variable (useful for production/testing) or,
# if not set there, use development local db.
app.config['SQLALCHEMY_DATABASE_URI'] = (
    os.environ.get('DATABASE_URL', 'postgresql:///quixr'))

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SQLALCHEMY_ECHO'] = False
app.config['DEBUG_TB_INTERCEPT_REDIRECTS'] = os.environ.get('DEBUG_TB_INTERCEPT_REDIRECTS', True)
app.config['SECRET_KEY'] = os.environ.get('SECRET_KEY', SECRET_KEY)
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

    
@app.errorhandler(404)
def not_found(e):
  return render_template("404.html")

def do_login(user):
    """Log in user."""

    session[CURR_USER_KEY] = user.id


def do_logout():
    """Logout user."""

    if CURR_USER_KEY in session:
        del session[CURR_USER_KEY]


@app.route('/user/signup', methods=["GET", "POST"])
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
        return render_template('user/signup.html', form=form)


@app.route('/user/login', methods=["GET", "POST"])
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


@app.route('/user/logout')
def logout():
    """Handle logout of user."""

    do_logout()

    return redirect('/')


#############################################################
# basic nav routes

@app.route('/')
def home():
    
    random_recipe = Recipe.get_random_recipe()

    return render_template('home.html', random_recipe=random_recipe) 


@app.route('/search', methods=["GET", "POST"])
def search():
    
    if request.method == 'POST':
        
        if 'id_list' in session:
            del session['id_list']
        
        ingredient = request.form.get('ingredient')
      
        session['id_list'] = Ingredient.get_recipe_ids_with_ingredient(ingredient)
        return redirect('display/results/0')
    else:
        return render_template('search.html')
    



#########################################################
# displays

@app.route('/display/results/<int:page_num>')
def results(page_num):
    RESULTS_PER_PAGE = 12
    results = []
        
    if 'id_list' in session:
        id_list = session['id_list'] 
    else:
        return render_template('search_results.html', results=None, total_pages=0, cur_page=0)
    
    total_pages = math.ceil(len(id_list)/RESULTS_PER_PAGE) - 1
        
    recipe_lengths = Recipe.return_recipe_lengths(id_list)
    recipe_lengths.sort(key = lambda x: x[1]) 

    index_start = page_num * RESULTS_PER_PAGE
    if index_start >= len(recipe_lengths):
        flash("Out of search results index")
        return render_template('404.html') 
    for index in range(index_start, index_start+RESULTS_PER_PAGE):
        if index < len(recipe_lengths):
            results.append(Recipe.get_full_recipe_from_id(recipe_lengths[index][0]))
        else:
            break

    return render_template('search_results.html', results=results, total_pages=total_pages, cur_page=page_num)

@app.route('/display/recipe/<int:id>')
def recipe(id):
    came_from = request.args.get('from', None)
    page_num = request.args.get('page_num', None)
    exists = Recipe.query.filter(Recipe.id==id).first()
    if not exists:
        flash("No recipe with that ID exists")
        return render_template('404.html')
    recipe = Recipe.get_full_recipe_from_id(id)

    return render_template('display_recipe.html', recipe=recipe, came_from=came_from, page_num=page_num)




########################################################
# user stuff

@app.route('/user/favorites/<int:page_num>')
def favorites_list(page_num):
    if not g.user:
        flash('You must be logged in to do that.')
        return redirect('/user/login')

    RESULTS_PER_PAGE = 12
    favorites = []
    
    favorite_objs = Favorite.query.filter(Favorite.user_id==session[CURR_USER_KEY])\
    .order_by(Favorite.recipe_id.asc()).all()
 
    total_pages = 0
    if favorite_objs:
        total_pages = math.ceil(len(favorite_objs)/RESULTS_PER_PAGE) - 1
        
        index_start = page_num * RESULTS_PER_PAGE
        if index_start >= len(favorite_objs):
            flash("Out of search results index")
            return render_template('404.html') 
        for index in range(index_start, index_start+RESULTS_PER_PAGE):
            if index < len(favorite_objs):
                fave_obj = favorite_objs[index]
                recipe_obj = Recipe.get_full_recipe_from_id(fave_obj.recipe_id)
                favorite = {
                    'id' : fave_obj.recipe_id,
                    'notes' : fave_obj.user_notes,
                    'rating' : fave_obj.user_rating,
                    'name' : recipe_obj['name'],
                    'image_url' : recipe_obj['image_url']  
                }
                favorites.append(favorite)
            else:
                break
    else:
        favorites = None


    return render_template('user/favorites.html', favorites=favorites, total_pages=total_pages, cur_page=page_num)

@app.route('/user/favorite/<int:recipe_id>')
def add_favorite(recipe_id):
    if not g.user:
        flash('You must be logged in to do that.')
        return redirect('/user/login')

    fave_obj = Favorite.query\
    .filter(Favorite.user_id==session[CURR_USER_KEY], Favorite.recipe_id==recipe_id).first()
    if fave_obj:
        return 'False'
    else:
        fave_obj = Favorite(user_id=session[CURR_USER_KEY],
                                            recipe_id=recipe_id)
        db.session.add(fave_obj)
        db.session.commit()
        return 'True'


@app.route('/user/unfavorite/<int:recipe_id>')
def remove_favorite(recipe_id):
    if not g.user:
        flash('You must be logged in to do that.')
        return redirect('/user/login')

    fave_obj = Favorite.query\
    .filter(Favorite.user_id==session[CURR_USER_KEY], Favorite.recipe_id==recipe_id).first()
    if fave_obj:
        db.session.delete(fave_obj)
        db.session.commit()
        return 'True'
    else:
        return 'False'
    
@app.route('/user/get_favorites')
def get_user_favorites():
    if not g.user:
        flash("You do not have access to that")
        return render_template("404.html")

    return jsonify(Favorite.get_user_favorites(session[CURR_USER_KEY]))

@app.route('/user/get_notes/<int:recipe_id>')
def get_fav_notes(recipe_id):
    if not g.user:
        flash("You do not have access to that")
        return render_template("404.html")

    return jsonify(Favorite.query.filter(Favorite.user_id==session[CURR_USER_KEY],\
     Favorite.recipe_id==recipe_id)\
    .first().user_notes)

@app.route('/user/update_notes/<int:recipe_id>', methods=["POST"])
def update_notes(recipe_id):
    if not g.user:
        flash("You do not have access to that")
        return render_template("404.html")

    notes = request.json.get('notes')
    fave_obj = Favorite.query\
    .filter(Favorite.user_id==session[CURR_USER_KEY], Favorite.recipe_id==recipe_id).first()

    if fave_obj:
        fave_obj.user_notes = notes
        db.session.commit()
        return 'True'
    else:
        return 'False'

###########################################################
