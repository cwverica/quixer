Everything! Where to start

### create templates for:
- Base Page  *started*
- intro/signed out home
- signed in home
- sign-up
- sign-in
- preferences
- tools
- ingredients
- search

### create routes for:
- Home page *started*  
    - intro/signed out home
    - signed in home
- sign-up
- sign-in
- preferences
- tools
- ingredients
- search

### create forms for:
- sign-in
- prefereneces
- tools
- ingredients
- search
- recipe (display)

### create models for:
- ingredients       **x**
- tools             **x**
- favorites         **x**
- saved recipes     **x**

### create logic for:
- taking recipe, finding unit, converting to chosen unit
- searching 'process' of recipe for verbs (shake, muddle, etc), equating to tool, marking recipe as needing said tool 
- searching (the big one)
    - Must be able to search and filter by ingredients on hand
    - Must also be able to sort by preferences








---


scratch pad area:



    SELECT ingredients.name, recipe_ingredients.measurement FROM recipe_ingredients JOIN ingredients ON ingredient_id=ingredients.id WHERE recipe_ingredients.recipe_id=13332;

