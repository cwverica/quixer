# quixer
An app to help you decide what drinks to make!


---

This app allows a user to input a list of ingredients and tools they have on hand,
and comes back with recipes for drinks that they could create.

This app is really for adults only. Children could use it for some non-alcoholic drinks,
but the main point is to make delicious cocktails. It is designed for anyone who has a 
limited supply on hand of spirits and ingredients, or someone who has plenty of 
ingredients and doesn't know what type of drink to make.

---

### Steps to be completed:

This app will use cocktailsapi.xyz (credit: [jaunroldan1989](https://github.com/juanroldan1989/shaken_not_stirred)). I highly reccomend 
you support this project. It is a very well laid out stucture, and with enough support 
may well become the standard cocktail database. I will have to become a member for full 
access to the api.

I will have to set-up a database for users. Retained information will be:
- the tools they have on hand 
- the ingredients they have on hand
- favorite recipes
- notes about favorited recipes
- inter user relationships of some sort (part of stretch goal)

They will be able to edit their tools or ingredients at any point. They will also be 
able to "favorite" recipes, and even leave themselves notes about a recipes they have favorited. 


The meat of the app is finding recipes. Users will be able to query based upon the 
ingredients they have on hand, with a parameter of 'willing to purchase an additional 
(0-3) ingredients.' These ingredients will be highlighted when the person views the recipe.

There will be additional logic to add preferences (would prefer a whiskey drink, avoid a 
vodka drink, no citrus, etc.)

There will be a sign up which will include onboarding familiarizing them with their 
ingredients and tools pages while filling them out for the first time, then take them 
to the search page. After the first search, there would be an option for tips (like 
how to favorite, leave notes, share (if implemented), etc.).

The user flow after onboarding would be pretty simple: much like any search page, search and sort through listings, read recipes, save them for later, etc.

Stretch goals might include:
- implementing a rating system
- ability to share favorite recipes with other users, which in itself implies a forum/message board/communication method
- search history (per user)
