# QuIxR
## An app to help you decide what drinks to make!
---

This app will eventually allow a user to input a list of ingredients and tools they have on hand,
and it will return recipes for drinks that they could create.

As of this build (0.1.1), the app provides a random recipe to check out on the home page.
It then allows a user to input an ingredient to search for, and returns a list of cocktails 
which contain that ingredient.

---


## QuickStart
Getting started in a flash, isn't as quick.
- Sign up to be a patreon supporter of [thecocktaildb](https://www.thecocktaildb.com/) to get an api key (recommended, see below) 
or 
- install the provided database file (swap username with your username)
 > createdb quixr
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

### Steps to be completed:

I signed up to [thecocktaildb](https://www.thecocktaildb.com/). 
Thecocktaildb provides the ingredients and their measurements all as separate fields
in the response, which will be helpful to organizing the data in a way most useful to me.
I had to become a patreon supporter for full access to the api.

I will have to set-up a database for users. Retained information will be:

- favorite recipes
- notes about favorited recipes
- inter user relationships of some sort (part of stretch goal)

Users will be able to "favorite" recipes, and even leave themselves notes about a recipes they have favorited. 


The meat of the app is finding recipes. Users will be able to query based upon the 
ingredients they have on hand, with a parameter of 'willing to purchase an additional 
(0-3) ingredients.'<sup>[2](#notes)</sup> These ingredients will be highlighted when the person views the recipe.


<sup>[2](#notes)</sup> There will be a sign up which will then take them 
to the search page. After the first search, there would be an option for tips (like 
how to favorite, leave notes, share (if implemented), etc.).

The user flow after onboarding would be pretty simple: much like any search page, search and sort through listings, read recipes, save them for later, etc.

Stretch goals might include:
- implementing a rating system
- ability to share favorite recipes with other users, which in itself implies a forum/message board/communication method
- search history (per user)

---

## Notes

<sup>2</sup> This is also a stretch goal. It is something I really want to implement, but may not be feasible. Goal for initial release is viability, if this cannot be achieved now, it will be a feature in a future release

