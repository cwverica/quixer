# QuIxR
## An app to help you decide what drinks to make!
---

This app will eventually allow a user to input a list of ingredients and tools they have on hand,
and it will return recipes for drinks that they could create.

As of this build (0.1.1), the app provides a random recipe to check out on the home page.
It then allows a user to input an ingredient to search for, and returns a list of cocktails 
which contain that ingredient.

---

To implement this code on your own, you must have your own api-key for [the cocktail db](https://www.thecocktaildb.com/).

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
