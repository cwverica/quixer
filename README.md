# QuIxR
## An app to help you decide what drinks to make!
---

This app allows a user to input a list of ingredients and tools they have on hand,
and comes back with recipes for drinks that they could create.

This app is really for adults only. It is designed for anyone who has a 
limited supply on hand of spirits and ingredients, or someone who has plenty of 
ingredients and doesn't know what type of drink to make. While the main focus
will be on the average user, the ultimate goal will be an app for cocktail 
lovers and afficionados who want to explore the unknown.

---

### Steps to be completed:

I have actually signed up to [thecocktaildb](https://www.thecocktaildb.com/). 
Thecocktaildb provides the ingredients and their measurements all as separate fields
in the response, which will be helpful to organizing the data in a way most useful to me.
I had to become a patreon supporter for full access to the api.

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
(0-3) ingredients.'<sup>[2](#notes)</sup> These ingredients will be highlighted when the person views the recipe.

There will be additional logic to add preferences (would prefer a whiskey drink, avoid a 
vodka drink, no citrus, etc.)

<sup>[2](#notes)</sup> There will be a sign up which will include onboarding familiarizing them with their 
ingredients and tools pages while filling them out for the first time, then take them 
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
