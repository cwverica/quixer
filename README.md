# QuIxR
## An app to help you decide what drinks to make!
---

This app will eventually allow a user to input a list of ingredients and tools they have on hand,
and it will return recipes for drinks that they could create.

As of this build (1.0.1), the app provides a random recipe to check out on the home page.
It then allows a user to input an ingredient to search for, and returns a list of cocktails 
which contain that ingredient.

---


## QuickStart
Getting started in a flash, isn't as quick.
- Sign up to be a patreon supporter of [thecocktaildb](https://www.thecocktaildb.com/) to get an api key (recommended, see below) 
or 
- install the provided database file (swap username with your username)
 > psql -U username quixr < dbexport.pgsql 
- create a virtual environment and install the requirements.txt
 > python -m venv venv  (or python3 depending on your system)
 > pip install -r requirements.txt
- run the app
 > flask run
- access at localhost:5000


If you chose to become a patreon supporter:
Good choice. We should all be supporting one another. Also, you'll always get the most up
to date database this way.

You should install everything in the requirements.txt
>pip install -r requirements.txt

Then you should create a seperate file for your api key. Import it into front_loader.py
replacing line 3 with whatever your import should be. **NOTE:** import your api key as 
'api_key' to not have to change anything else

Set-up your database. You can do this by either creating your database as you like
and setting your environement variable to 'DATABASE_URL' or creating a postgresql
database and naming it 'quixr'.


You should then run front_loader.py
> python front_loader.py

At this point, your app is ready to launch, either via:
>flask run
 
or setting it up on a host.

---


Stretch goals might include:
- setting up tools and ingredients that the user has, and being able to search and sort by what the user has on hand
- implementing preferences
- implementing a rating system
- ability to share favorite recipes with other users, which in itself implies a forum/message board/communication method
- search history (per user)



