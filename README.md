# QuIxR

## An app to help you decide what drinks to make!

---

This app will eventually allow a user to input a list of ingredients and tools they have on hand, and it will return recipes for drinks that they could create.

As of this build (1.0.1), the app provides a random recipe to check out on the home page.

It then allows a user to input an ingredient to search for and returns a list of cocktails which contain that ingredient.

---

## Deployed app

https://quixr.herokuapp.com/

### Tech Used

#### Front-End:
- Vanilla JS
- JQuery
- WTForms
- Bootstrap
- CSS
- Font Awesome

#### Back-End
- Python
- Postgresql
- SQLAlchemy
- Flask
- WTForms
- BCrypt

#### Server
- Heroku
- Nginx

## QuickStart
Getting started in a flash, you have two options.
1. Sign up to be a Patreon supporter of [thecocktaildb](https://www.thecocktaildb.com/) to get an API key (recommended).

or 

2. install the provided database file (swap username with your username)

### *Option 1: Becoming a patreon supporter*

Good choice. We should all be supporting one another. Also, you'll always get the most up
to date database this way.

1. You should install everything in the requirements.txt

> pip install -r requirements.txt

2. Then you should create a separate file for your API key. Import it into front_loader.py replacing line 3 with whatever your import should be. 

    **NOTE:** import your API key as `api_key` to not have to change anything else.

3. Set up your database. You can do this by either creating your database as you like and setting your environment variable to `DATABASE_URL` or creating a postgresql
database and naming it 'quixr'.

4. You should then run front_loader.py

> python front_loader.py

5. At this point, your app is ready to launch locally:

> flask run 

Access at http://127.0.0.1:5000/

### *Option 2: Using the provided database file*
1. Load the preloaded database in

 > psql -U *postgres* quixr < dbexport.pgsql 

`postgres` is usually the default username that installs with postgres DB. If you've set up your postgres to use a different username, insert it here.

2. Create a virtual environment (highly recommended, not 100% necessary) run it:

 > *python* -m venv venv  

*python* might actually be *python3* depending on your system
 In Mac/Linux, running your virtual environment is:
 
 > . venv/bin/activate
 
 In Windows:
 
 > source venv/bin/activate
 
3. Install the required frameworks and tools:

 > pip install -r requirements.txt

4. Your app should be ready to run:

 > flask run

Access at http://127.0.0.1:5000/ or set it up to be hosted.

### Testing

There are some basic tests. I will add some more going forward, so check back from time to time.

To run the tests:
- Activate your virtual environment
- Run Python's unittest module
> python -m unittest

---

## Stretch goals
- setting up tools and ingredients that the user has, and being able to search and sort by what the user has on hand
- implementing preferences
- implementing a rating system
- ability to share favorite recipes with other users, which in itself implies a forum/message board/communication method
- search history (per user)
