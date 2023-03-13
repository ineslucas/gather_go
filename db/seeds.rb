# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Booking.delete_all
PartyEdible.delete_all # needs to be first
PartyGame.delete_all
Party.delete_all
Edible.delete_all

puts 'Creating 9 party themes...'

# please note that 80s_party doesn't work as a variable name because of the number. So name must be eighties_party.
eighties_party = Party.create(
  name: '80s Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX4UtSsGT1Sbe" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Potato', # always displays YES
  # cocktails: 'Negroni', #always displays YES
  # mocktails: 'Virgin Mary Iced Tea' # only displays if mocktails: true YES
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/katiebharrell/80s-party/"></a>',
  # game: 'Rubik\'s Cube Contest',
  description: 'Get ready to rock out to some of the best music from the 1980s at this totally rad party!',
  category: :dance,
  emoji: "🕺"
)

halloween_bash = Party.create(
  name: 'Halloween Bash',
  playlist: '<iframe src="https://open.spotify.com/embed/album/3S65jjsnKGpXpXltWm5hlB" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Pumpkin Soup',
  # cocktail: Monster Sangria
  # mocktail: Virgin Monster Sangria Bowl
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/kellieleclair/halloween-bash/"></a>',
  # game: 'Costume Contest',
  description: 'Get ready for a spooky and fun-filled Halloween party with your friends!',
  category: :other,
  emoji: "👻"
)

seventies_disco_party = Party.create(
  name: '70s Disco Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/5AM2XcKizz2Sn1fRZDr9Pp" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: spinach filo rolls
  # cocktail: long island iced tea
  # mocktail: virgin belini
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/mjdickey87/psychedelic-70s-party/"></a>',
  # game: 'Disco Dance-off',
  description: 'Step back in time and groove to the disco beats at this 70s-themed party!',
  category: :dance,
  emoji: "👨‍🎤"
)

bond_007_party = Party.create(
  name: 'Bond 007 Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX0ZzMQgXnSUD" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  #recipe: english bbreakfast
  #cocktail: 'dirty Martini',
  #mocktail: 'virgin old fashioned'
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/ckenny210/james-bond-party/"></a>',
  # game: 'Spy Games',
  description: 'Dress up as your favorite Bond character and enjoy some shaken (not stirred) cocktails at this party!',
  category: :crime,
  emoji: "🕴"
)

great_gatsby_party = Party.create(
  name: 'Great Gatsby Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/2rFcmGJZR7jJNO6v8HjpGh" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe:deviled eggs
  # cocktail: 'Old-Fashioned',
  # mocktail: virgin cosmopolitan
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/fromh2hdesign/great-gatsby-party/"></a>',
  # game: 'Charleston Dance-off',
  description: 'Put on your flapper dress and sip some cocktails at this elegant Great Gatsby-themed party!',
  category: :crime,
  emoji: "💃"
)

carnival_party = Party.create(
  name: 'Carnival Party',
  playlist: '<iframe src="https://open.spotify.com/embed/artist/0LyfQWJT6nXafLPZqxe9Of" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: loaded nachos
  # 'Margarita'- YES
  # 'virgin pina colada
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/Glannce/brazilian-carnival-party/"></a>',
  # game: 'Pinata Bash',
  description: 'Get ready to party with colorful masks, tasty snacks, and fun games at this carnival-themed party!',
  category: :dance,
  emoji: "🦹‍♀️"
)

tropical_luau = Party.create(
  name: 'Tropical Luau',
  playlist: '<iframe src="https://open.spotify.com/embed/album/5OMjuxWk05g2RdCVEwcTH9" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Mai Tai',
  # hummus plate: always appears
  #virgin pina colada
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/catchmyparty/hawaiian-luau-party/"></a>',
  # game: 'Limbo Contest',
  description: 'Escape to a tropical paradise with this fun and festive luau party!',
  category: :dance,
  emoji: "🌸"
)

medieval_feast = Party.create(
  name: 'Medieval Feast',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/2Y73njm5d4enXmGuuZokdl" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Roast Chicken and Vegetables',
  #cocktail
  #mocktail:
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/retrogirl2/medieval-party/"></a>',
  # game: 'Jousting Tournament',
  description: 'Travel back in time to the Middle Ages with this medieval feast party!',
  category: :dance,
  emoji: "🫅"
)

fiesta = Party.create(
  name: 'Fiesta',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/723VT4ai8nIMHtjI17u4zq" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Margaritas',
  #loaded nachos
  # virgin mojito
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/dailyelegance/fiesta/"></a>',
  # game: 'Piñata Smash',
  description: 'Get ready to fiesta with this fun and colorful party theme!',
  category: :other,
  emoji: "🪅"
)

# Add more parties as needed...

puts 'Creating a few edibles...'

puts 'Starting by creating a few mains to associate later with my party themes...'

potato_skins = Edible.create(
  name: "Potato Skins",
  category: :main,
  has_alcohol: false,
  description: "Crispy potato skins loaded with cheese, bacon, and green onions. Perfect for sharing with friends or as an appetizer for game day!",
  ingredients: "6 medium potatoes, 2 tablespoons olive oil, 1 teaspoon salt, 1/2 teaspoon garlic powder, 1/2 teaspoon paprika, 1/4 teaspoon black pepper, 6 strips bacon, cooked and crumbled, 1 cup shredded cheddar cheese, 1/4 cup chopped green onions",
  instructions: "1. Preheat oven to 400°F. 2. Wash potatoes and pat dry. Cut each potato into 6 wedges. 3. In a large bowl, toss potato wedges with olive oil, salt, garlic powder, paprika, and black pepper until well coated. 4. Arrange potato wedges in a single layer on a baking sheet lined with parchment paper. 5. Bake for 25-30 minutes, or until potatoes are golden brown and crispy. 6. Remove from oven and sprinkle with cooked bacon, cheddar cheese, and green onions. 7. Return to oven and bake for an additional 5-10 minutes, or until cheese is melted and bubbly. 8. Serve hot and enjoy!"
)

loaded_nachos = Edible.create(
  name: "Loaded Nachos",
  category: :main,
  has_alcohol: false,
  description: "A delicious plate of loaded nachos, topped with melted cheese, guacamole, sour cream, and jalapeños.",
  ingredients: "1 bag of tortilla chips\n1 can of black beans\n1 cup of shredded cheddar cheese\n1 diced tomato\n1/2 diced red onion\n1/2 cup of sliced jalapeños\n1/2 cup of guacamole\n1/2 cup of sour cream",
  instructions: "1. Preheat your oven to 350°F.\n2. Spread the tortilla chips evenly on a large baking sheet.\n3. Pour the black beans over the tortilla chips.\n4. Sprinkle the shredded cheese on top of the beans.\n5. Add the diced tomato and red onion.\n6. Sprinkle the sliced jalapeños over everything.\n7. Bake in the oven for 10-15 minutes, or until the cheese is melted and bubbly.\n8. Remove from the oven and top with dollops of guacamole and sour cream.\n9. Serve and enjoy!"
)

hummus_plate = Edible.create(
 name: "Hummus Plate",
 category: :main,
 has_alcohol: false,
 description: "A tasty plate of hummus served with fresh vegetables and pita bread.",
 ingredients: "1 can of chickpeas\n1/4 cup of tahini\n1/4 cup of lemon juice\n2 garlic cloves, minced\n1/4 teaspoon of cumin\n2 tablespoons of olive oil\nSalt and pepper, to taste\nAssorted vegetables (carrots, cucumbers, cherry tomatoes, etc.)\nPita bread",
 instructions: "1. Drain and rinse the chickpeas.\n2. In a food processor, combine the chickpeas, tahini, lemon juice, garlic, cumin, olive oil, salt, and pepper.\n3. Process the mixture until it is smooth and creamy.\n4. Taste and adjust the seasoning as needed.\n5. To serve, place the hummus in a bowl and garnish with a drizzle of olive oil and a sprinkle of paprika (optional).\n6. Arrange the vegetables and pita bread on a platter alongside the hummus.\n7. Enjoy!"
)

pumpkin_soup = Edible.create(
  name: "Pumpkin Soup",
  category: :main,
  has_alcohol: false,
  description: "This creamy pumpkin soup is perfect for a cozy autumn evening.",
  ingredients: "1 small pumpkin, peeled and chopped, 1 onion, chopped, 2 cloves of garlic, minced, 2 cups of vegetable broth, 1 cup of heavy cream, salt, pepper, olive oil",
  instructions: "In a large pot, sauté the onion and garlic in olive oil until they are soft. Add the chopped pumpkin and cook for 5 minutes. Pour in the vegetable broth and bring to a boil. Reduce heat and let simmer until the pumpkin is tender, about 20 minutes. Use an immersion blender or transfer the soup to a blender to puree until smooth. Stir in the heavy cream and heat through. Season with salt and pepper to taste. Serve hot and enjoy!"
  )

deviled_eggs = Edible.create(
  name: "Deviled Eggs",
  category: :main,
  has_alcohol: false,
  description: "Deviled eggs are a classic and tasty appetizer that are perfect for any occasion.",
  ingredients: "6 eggs, 1/4 cup mayonnaise, 1 teaspoon yellow mustard, 1/2 teaspoon white vinegar, 1/8 teaspoon salt, 1/8 teaspoon black pepper, paprika",
  instructions: "Place the eggs in a pot of cold water and bring to a boil. Let the eggs sit in the hot water for 12 minutes. Scoop out the yolks and place them in a mixing bowl. Add the mayonnaise, mustard, vinegar, salt, and black pepper to the yolks and mix until smooth. Spoon the yolk mixture back into the egg whites. Sprinkle paprika over the top of each egg. Chill the eggs in the refrigerator for at least 30 minutes. Serve cold and enjoy!"
  )

pigs_in_a_blanket = Edible.create(
  name: "Pigs in a Blanket",
  category: :main,
  has_alcohol: false,
  description: "Classic pigs in a blanket appetizer made with mini hot dogs and flaky puff pastry. Perfect for any party or gathering!",
  ingredients: "1 package mini hot dogs (or cocktail wieners), 1 package puff pastry, 1 egg beaten with 1 tablespoon of water",
  instructions: "1. Preheat oven to 400°F. 2. Roll out puff pastry on a lightly floured surface. Cut the pastry into strips that are about 1 inch wide and 3 inches long. 3. Wrap each mini hot dog with a pastry strip, pressing the ends together to seal. 4. Place the wrapped hot dogs on a baking sheet lined with parchment paper. 5. Brush the tops of the pastry with the egg wash. 6. Bake for 15-20 minutes, or until the pastry is golden brown and puffed up. 7. Remove from oven and let cool for a few minutes before serving. 8. Serve with your favorite dipping sauce and enjoy!"
)

roast_chicken = Edible.create(
  name: "Roast Chicken",
  category: :main,
  has_alcohol: false,
  description: "A classic roast chicken recipe that is juicy and tender on the inside with crispy skin on the outside. Perfect for a medieval Feast!",
  ingredients: "1 whole chicken (4-5 pounds), 2 tablespoons of olive oil, 2 teaspoons of salt, 1 teaspoon of black pepper, 1 lemon, 1 head of garlic, 4 sprigs of fresh rosemary",
  instructions: "1. Preheat oven to 425°F. 2. Place the chicken in a roasting pan and drizzle with olive oil. 3. Season the chicken with salt and pepper, inside and out. 5. Cut the lemon in half and squeeze the juice over the chicken. 6. Cut the garlic head in half horizontally and place it inside the chicken cavity along with the lemon halves and rosemary sprigs. 7. Tie the legs of the chicken together with kitchen twine. 8. Roast the chicken for 1 hour and 15 minutes, or until the internal temperature of the chicken reaches 165°F. 9. Remove the chicken from the oven and let it rest for 10-15 minutes before carving. 10. Serve hot and enjoy!"
  )

filo_pastry_spinach_rolls = Edible.create(
  name: "Filo Pastry Spinach Rolls",
  category: :appetizer,
  has_alcohol: false,
  description: "Crispy filo pastry filled with spinach and feta cheese. These spinach rolls are perfect for any occasion and are sure to impress your guests!",
  ingredients: "1 package frozen filo pastry, 2 cups fresh spinach, chopped, 1/2 cup crumbled feta cheese, 1/4 cup chopped fresh parsley, 1/4 cup chopped scallions, 1/4 cup olive oil, Salt and pepper to taste",
  instructions: "1. Preheat oven to 375°F. 2. In a mixing bowl, combine the chopped spinach, feta cheese, parsley, scallions, olive oil, salt, and pepper. Mix well. 3. Unwrap the filo pastry and lay out one sheet. Brush it lightly with olive oil. 4. Lay another sheet of filo pastry on top and brush with olive oil. Repeat until you have 3 sheets of filo pastry. 5. Cut the filo pastry into 3 long strips. 6. Place a spoonful of the spinach mixture at the bottom of each strip. Roll up the filo pastry, tucking in the sides as you go. 7. Brush the rolls with olive oil and place on a baking sheet lined with parchment paper. 8. Bake for 15-20 minutes, or until the filo pastry is golden brown and crispy. 9. Remove from the oven and let cool for a few minutes before serving. 10. Serve hot and enjoy!"
)

puts 'Now creating some cocktails...'

negroni = Edible.create(
  name: "Negroni",
  category: :cocktail,
  has_alcohol: true,
  ingredients: "1 oz gin, 1 oz sweet vermouth, 1 oz Campari",
  instructions: "Combine all ingredients in a mixing glass with ice. Stir until chilled. Strain into a rocks glass over a large ice cube. Garnish with an orange peel.",
  description: "The Negroni is a classic Italian cocktail that is made with gin, sweet vermouth, and Campari. It is a refreshing and slightly bitter drink that is perfect for sipping on a warm summer evening.",
)

tequila_sunrise = Edible.create(
  name: "Tequila Sunrise",
  category: :cocktail,
  has_alcohol: true,
  description: "The Tequila Sunrise is a classic cocktail that's perfect for summer sipping. It's a refreshing and fruity drink that's easy to make.",
  ingredients: "2 oz tequila, 4 oz orange juice, 3/4 oz grenadine syrup, orange slice and cherry (for garnish), ice",
  instructions: "Fill a highball glass with ice. Add the tequila and orange juice, and stir gently to combine. Slowly pour the grenadine syrup over the back of a spoon so it sinks to the bottom of the glass. Do not stir. Garnish with an orange slice and a cherry. Enjoy!"
)

margarita = Edible.create(
  name: "Margarita",
  category: :cocktail,
  has_alcohol: true,
  description: "The Margarita is a classic cocktail made with tequila, lime juice, and triple sec. It's a refreshing and tangy drink that's perfect for summer.",
  ingredients: "2 oz tequila, 1 oz lime juice, 1 oz triple sec, salt (for rimming), lime wedge (for garnish), ice",
  instructions: "Rub a lime wedge around the rim of a margarita glass, and dip the rim into salt to coat it. Fill a shaker with ice, and add the tequila, lime juice, and triple sec. Shake well, and strain into the salt-rimmed glass over ice. Garnish with a lime wedge. Enjoy!"
)

old_fashioned = Edible.create(
  name: "Old-Fashioned",
  category: :cocktail,
  has_alcohol: true,
  description: "A classic cocktail made with bourbon, sugar, bitters, and a twist of citrus.",
  ingredients: "2 oz bourbon, 1 tsp sugar, 2 dashes Angostura bitters, 1 twist of orange or lemon peel",
  instructions: "1. In an Old-Fashioned glass, muddle the sugar with a few drops of water until it dissolves.
  2. Add the bitters and a large ice cube.
  3. Pour in the bourbon and stir gently.
  4. Garnish with a twist of citrus peel and enjoy!"
)


sangria = Edible.create(
  name: "Monster Sangria",
  category: :cocktail,
  has_alcohol: true,
  description: "This scary Sangria is a refreshing and fruity cocktail that's perfect for Halloween.",
  ingredients: "1 bottle of red wine\n1/2 cup of brandy\n1/2 cup of orange juice\n1/4 cup of lemon juice\n1/4 cup of sugar\n1 sliced orange\n1 sliced lemon\n1 sliced lime\n1/2 cup of sliced strawberries\nClub soda, for serving\nIce\nScary Candy",
  instructions: "1. In a large pitcher, combine the red wine, brandy, orange juice, lemon juice, and sugar. Stir until the sugar dissolves.\n2. Add the Halloween Gummies, sliced orange, lemon, lime, and strawberries to the pitcher.\n3. Cover the pitcher and refrigerate for at least 2 hours (or up to 24 hours) to let the flavors meld together.\n4. To serve, fill glasses with ice and pour in the sangria, making sure to include some of the fruit in each glass.\n5. Top each glass with a splash of club soda and stir gently.\n6. Serve and enjoy!"
)

whiskey_sour = Edible.create(
  name: "Whiskey Sour",
  category: :cocktail,
  has_alcohol: true,
  description: "The Whiskey Sour is a classic cocktail that combines the bold flavor of whiskey with the tangy taste of lemon and the sweetness of sugar.",
  ingredients: "2 oz bourbon or rye whiskey\n1 oz fresh lemon juice\n1/2 oz simple syrup\n1 dash of Angostura bitters\nIce",
  instructions: "1. Fill a cocktail shaker with ice.\n2. Add the whiskey, lemon juice, simple syrup, and bitters to the shaker.\n3. Shake the mixture well for about 10 seconds.\n4. Strain the mixture into a glass filled with ice.\n5. Garnish the cocktail with a cherry and an orange slice, if desired.\n6. Serve and enjoy!"
)

long_island_iced_tea = Edible.create(
  name: "Long Island Iced Tea",
  category: :cocktail,
  has_alcohol: true,
  description: "The Long Island Iced Tea is a classic cocktail made with a combination of spirits, mixed with cola and lemon juice for a refreshing and slightly sweet taste.",
  ingredients: "1/2 oz vodka\n1/2 oz rum\n1/2 oz gin\n1/2 oz tequila\n1/2 oz triple sec\n1 oz lemon juice\n1 oz simple syrup\nSplash of cola\nIce",
  instructions: "1. Fill a shaker with ice.\n2. Add the vodka, rum, gin, tequila, triple sec, lemon juice, and simple syrup to the shaker.\n3. Shake the mixture well for about 10 seconds.\n4. Strain the mixture into a tall glass filled with ice.\n5. Top off the glass with a splash of cola.\n6. Garnish the cocktail with a lemon wedge or mint sprig, if desired.\n7. Serve and enjoy!"
)
mulled_wine = Edible.create(
  name: "Mulled Wine",
  category: :cocktail,
  has_alcohol: true,
  description: "Mulled wine is a warm and cozy beverage made with red wine and spices, perfect for chilly nights or holiday gatherings.",
  ingredients: "1 bottle of red wine\n1/2 cup brandy\n1/2 cup honey\n1 cinnamon stick\n2 star anise\n4 cloves\n1 orange, sliced\n1 lemon, sliced\n",
  instructions: "1. Pour the red wine into a large saucepan over medium heat.\n2. Add the brandy, honey, cinnamon stick, star anise, cloves, orange slices, and lemon slices to the pan.\n3. Stir the mixture until the honey is dissolved.\n4. Bring the mixture to a simmer, then reduce the heat to low.\n5. Simmer the mixture for about 15-20 minutes, stirring occasionally.\n6. Remove the saucepan from heat and let it sit for about 5 minutes to allow the flavors to meld.\n7. Strain the mixture into a large bowl or pitcher, discarding the spices and fruit.\n8. Serve the mulled wine warm in mugs or heatproof glasses.\n9. Garnish each serving with a cinnamon stick or orange slice, if desired.\n10. Enjoy!"
)

puts 'Finally creating some mocktails...'

virgin_margarita = Edible.create(
  name: "Virgin Margarita",
  category: :mocktail,
  has_alcohol: false,
  description: "The Virgin Margarita is a non-alcoholic version of the classic Margarita cocktail. It's a refreshing and tangy drink that's perfect for those who want to enjoy the taste of a Margarita without the alcohol.",
  ingredients: "3 oz lime juice\n2 oz orange juice\n1 oz simple syrup\nsalt (for rimming)\nlime wedge (for garnish)\nice",
  instructions: "Rub a lime wedge around the rim of a margarita glass, and dip the rim into salt to coat it.\nFill a shaker with ice, and add the lime juice, orange juice, and simple syrup.\nShake well, and strain into the salt-rimmed glass over ice.\nGarnish with a lime wedge. Enjoy!"
)

virgin_pinacolada = Edible.create(
  name: "Virgin Piña Colada",
  category: :mocktail,
  has_alcohol: false,
  description: "The Virgin Piña Colada is a refreshing and tropical twist.",
  ingredients: "3 oz lime juice,\n1 pineapple,\n1 can of coconut cream,\nice",
  instructions: "Mix all of the ingredients and whiz them together. Pour over ice and enjoy!"
)

virgin_mojito = Edible.create(
  name: "Virgin Mojito",
  category: :mocktail,
  has_alcohol: false,
  description: "The Virgin Mojito is a refreshing and minty mocktail.",
  ingredients: "1 lime\n1 tbsp sugar\n8-10 mint leaves\n1 Cup soda water\nIce",
  instructions: "Cut the lime into small pieces and muddle them with sugar and mint leaves in a glass.\nAdd ice and top up with soda water. Stir and enjoy!"
)

virgin_mary_iced_tea = Edible.create(
  name: "Virgin Mary Iced Tea",
  category: :mocktail,
  has_alcohol: false,
  description: "The Virgin Mary Iced Tea is a refreshing and spicy mocktail.",
  ingredients: "1 black tea bag\n2 cups of tomato juice\n1 lemon\n1/2 teaspoon Worcestershire sauce\n1/4 teaspoon Tabasco sauce\nsalt, black pepper\nice",
  instructions: "Steep the black tea bag in 2 cups of boiling water for 5 minutes.\nRemove the tea bag and let the tea cool down.\nIn a pitcher, combine the cooled tea, tomato juice, juice of half a lemon, Worcestershire sauce, and Tabasco sauce.\nStir well and season with salt and black pepper to taste.\nChill in the refrigerator for at least 30 minutes.\nServe over ice and garnish with a lemon wedge. Enjoy!"
)

virgin_cosmo = Edible.create(
  name: "Virgin Cosmopolitan",
  category: :mocktail,
  has_alcohol: false,
  description: "The Virgin Cosmopolitan is a classic and sophisticated mocktail.",
  ingredients: "2 oz cranberry juice,\n1 oz lime juice,\n1 oz orange juice,\n1 oz simple syrup, ice",
  instructions: "In a cocktail shaker, combine the cranberry juice, lime juice, orange juice, simple syrup, and ice.\nShake well until chilled.\nStrain the mixture into a chilled martini glass.\nG\narnish with a lime wheel or twist. Serve and enjoy!"
)

virgin_sangria = Edible.create(
  name: "Virgin Monster Sangria",
  category: :mocktail,
  has_alcohol: false,
  description: "This scary Virgin Sangria is a non-alcoholic version of the classic cocktail that's just as refreshing and flavorful and perfect for halloween.",
  ingredients: "2 cups of grape juice\n1/2 cup of orange juice\n1/4 cup of lemon juice\n1/4 cup of lime juice\n2 tablespoons of honey\n1 sliced orange\n1 sliced lemon\n1 sliced lime\n1/2 cup of sliced strawberries\nClub soda, for serving\nIce\nHalloween Candy",
  instructions: "1. In a large pitcher, combine the grape juice, orange juice, lemon juice, lime juice, and honey. Stir until the honey dissolves.\n2. Add the Halloween Candy, sliced orange, lemon, lime, and strawberries to the pitcher.\n3. Cover the pitcher and refrigerate for at least 2 hours (or up to 24 hours) to let the flavors meld together.\n4. To serve, fill glasses with ice and pour in the virgin sangria, making sure to include some of the fruit in each glass.\n5. Top each glass with a splash of club soda and stir gently.\n6. Serve and enjoy!"
)

virgin_bellini = Edible.create(
  name: "Virgin Bellini",
  category: :mocktail,
  has_alcohol: false,
  description: "The Virgin Bellini is a refreshing and fruity mocktail that's perfect for brunch or any occasion.",
  ingredients: "2 cups of peach nectar\n1 cup of sparkling water\n1 tablespoon of honey\n1/4 cup of frozen peach slices\nIce",
  instructions: "1. In a blender, combine the peach nectar, sparkling water, honey, and frozen peach slices. Blend until the mixture is smooth and frothy.\n2. Fill glasses with ice and pour in the virgin Bellini mixture.\n3. Garnish each glass with a slice of fresh peach or a sprig of mint, if desired.\n4. Serve and enjoy!"
)

virgin_old_fashioned = Edible.create(
  name: "Virgin Old Fashioned",
  category: :mocktail,
  has_alcohol: false,
  description: "The Virgin Old Fashioned is a classic cocktail without the alcohol. It's perfect for those who want to enjoy the taste of an Old Fashioned without the buzz.",
  ingredients: "1 tsp sugar\n1 tsp water\n2 dashes of Angostura bitters\n1 orange slice\n1 cherry\n1 cup ginger ale\nIce",
  instructions: "1. In a glass, muddle together the sugar, water, bitters, orange slice, and cherry until the sugar has dissolved and the fruit is slightly crushed.\n2. Fill the glass with ice and top with ginger ale.\n3. Stir well.\n4. Garnish with an orange twist or a cherry.\n5. Serve and enjoy!"
)

mulled_wine_virgin = Edible.create(
  name: "Virgin Mulled Wine",
  category: :mocktail,
  has_alcohol: false,
  description: "A warm and comforting spiced drink that's perfect for cold winter nights. This virgin version of mulled wine is made with a combination of fruit juices and warm spices.",
  ingredients: "4 cups apple juice\n2 cups cranberry juice\n1/2 cup orange juice\n1/2 cup honey\n2 cinnamon sticks\n6 whole cloves\n2 star anise\n1 orange, sliced\n1 lemon, sliced",
  instructions: "1. In a large pot, combine the apple juice, cranberry juice, orange juice, honey, cinnamon sticks, cloves, and star anise.\n2. Heat the mixture over medium heat, stirring occasionally, until the honey is fully dissolved and the mixture is hot.\n3. Reduce the heat to low and let the mixture simmer for 15-20 minutes, until the spices have infused into the drink.\n4. Remove from heat and strain the mixture into a large bowl or pitcher.\n5. Add the sliced orange and lemon to the drink, and serve warm in mugs.\n6. Enjoy!"
)

puts 'Creating Party Edibles - aka edibles which are associated with parties...'

# Potato Skins are now available as an "Edible" associated with the 80s party - will show up when 80's party mains are called
PartyEdible.create(
  party: eighties_party,
  edible: potato_skins
)

PartyEdible.create(
  party: eighties_party,
  edible: negroni
)

PartyEdible.create(
  party: eighties_party,
  edible: virgin_mary_iced_tea
)

# Margarita is now available as an "Edible" associated with the carnival party - will show up when Carnival Party's cocktails are called
PartyEdible.create(
  party: carnival_party,
  edible: margarita
)

# Virgin Margarita is now available as an "Edible" associated with the carnival party - will show up when Carnival Party's mocktails are called
PartyEdible.create(
  party: carnival_party,
  edible: virgin_margarita
)

PartyEdible.create(
  party: carnival,
  edible: loaded_nachos
)

PartyEdible.create(
  party: fiesta,
  edible: loaded_nachos
)

PartyEdible.create(
  party: fiesta,
  edble: margarita
)

PartyEdible.create(
  party: fiesta,
  edible: virgin_mojito
)

PartyEdible.create(
  party: tropical_luau,
  edible: hummus_plate
)

PartyEdible.create(
  party: tropical_luau,
  edible: tequila_sunrise
)

PartyEdible.create(
  party: tropical_luau,
  edible: virgin_pinacolada
)

PartyEdible.create(
  party: great_gatsby_party,
  edible: old_fashioned
)

PartEdible.create(
  party: great_gatsby_party,
  edible: deviled_eggs
)

PartyEdible.create(
  party: great_gatsby_party,
  edible: virgin_cosmo
)

PartyEdible.create(
  party: halloween_bash,
  edible: pumpkin_soup
)

PartyEdible.create(
  party: halloween_bash,
  edible: sangria
)

PartyEdible.create(
  party: halloween_bash,
  edible: virgin_sangria
)

PartyEdible.create(
  party: seventies_disco_party,
  edible: virgin_bellini
)

PartyEdible.create(
  party: seventies_disco_party,
  edible: long_island_iced_tea
)

PartyEdible.create(
  party: seventies_disco_party,
  edible: filo_pastry_spinach_rolls
)

PartEdible.create(
  party: bond_007_party,
  edible: whiskey_sour
)

PartEdible.create(
  party: bond_007_party,
  edible: pigs_in_a_blanket
)

PartEdible.create(
  party: bond_007_party,
  edible: virgin_old_fashioned
)

PartyEdible.create(
  party: medieval_feast,
  edible: roast_chicken
)

PartyEdible.create(
  party: medieval_feast,
  edible: mulled_wine_virgin
)
PartyEdible.create(
  party: medieval_feast,
  edible: mulled_wine
)


puts 'Creating Games...'

rubiks_cube_contest = Game.create(
  name: "Rubik's Cube Contest",
  description: "A timed competition where participants race to solve Rubik's Cubes as quickly as possible.",
  materials: "Rubik's Cubes",
  instructions: "Each participant is given a scrambled Rubik's Cube and has a set amount of time to solve it. The participant with the fastest solve time wins the competition."
)

moon_walking_contest = Game.create(
  name: "Moon Walking Contest",
  description: "A moon walking contest is a dance competition where the participants try to imitate Michael Jackson's famous moonwalk. The participants are judged on how well they can perform the moonwalk and other dance moves from Michael Jackson's performances.",
  materials: "Smooth floor, speakers, Michael Jackson music.",
  instructions: "Participants must wear comfortable shoes and clothing that allows for free movement. The contest will begin with participants dancing to Michael Jackson's music. The judges will then choose the top contestants based on their moonwalking skills and overall dance performance. The top contestants will then compete against each other to determine the winner of the moon walking contest."
)

pinata_smash = Game.create(
  name: "Piñata Smash",
  description: "In this game, a piñata is hung from a tree or a ceiling and players take turns trying to smash it open with a stick while blindfolded. Once the piñata is broken, candy or small toys fall out and everyone rushes to collect them.",
  materials: "Piñata, Blindfold, Stick, Candy or small toys",
  instructions: "Hang the piñata from a sturdy tree branch or ceiling hook. Blindfold the player, spin them around three times, and give them the stick. Let them swing at the piñata until it breaks open. Once the piñata is broken, the player takes off their blindfold and everyone rushes to collect the candy or small toys that fell out.",
)

# for Great Gatsby Party
charleston_dance_off = Game.create(
  name: "Charleston Dance-off",
  materials: "Music player, speakers, timer, scorecards",
  description: "The Charleston dance-off is a fun and lively game that is perfect for a Great Gatsby themed party. Players compete against each other to see who can perform the best Charleston dance routine. The dance style originated in the 1920s and is known for its energetic, swinging movements and syncopated rhythms. This game will require some space, good music, and lots of enthusiasm!",
  instructions: "Divide players into pairs or small groups. Each group will take turns performing a Charleston dance routine while the others score them based on their energy, creativity, and overall performance. Set a timer for each performance and award points based on how well each group performs. The group with the highest score at the end of the game wins!"
)

murderer = Game.create(
  name: "Murderer",
  materials: "Deck of cards, Pen and Paper",
  description: "A party game of bluffing and deduction, where players take on roles of innocent civilians and a murderer who is secretly killing them off one by one.",
  instructions: "1. Write the roles of the game on separate cards, including one murderer and one detective. Shuffle the cards and deal them out to the players.
  The murderer chooses a victim secretly during the game and ‘kills’ them by winking at them. The victim should play along and ‘die’ dramatically.
  The detective must try to guess who the murderer is before they kill everyone else. They get one guess per round.
  Everyone can accuse and vote on who they think the murderer is. The person with the most votes must reveal their card. If they are the murderer, the game is over and the detective loses. If they are not the murderer, the game continues.
  The game ends when either the detective correctly identifies the murderer, or the murderer kills everyone without getting caught.
  The game can continue with different roles or shuffled cards for a new game."
)

costume_contest = Game.create(
  name: "Costume Contest",
  materials: "Costumes",
  description: "The aim of the game is to have the best costume out of everyone.",
  instructions: "Each guest will recieve a paper where they vote on the best costume. The person with the most votes wins!"
)

disco_danceoff = Game.create(
  name: "Disco Dance Off",
  materials: "Music player, speakers",
  description: "Who is the best dancer? Battle it out with your friends to 70s tunes!",
  instructions: "Everyone can show off their best moves. In the end you will vote on who has the best groove. The person with the most votes wins the battle!",
)

limbo_contest = Game.create(
  name: "Limbo Contest",
  materials: "A long stick or broom handle",
  description: "A classic party game where players compete to see who can bend the furthest backwards and pass under a stick without touching it or falling over.",
  instructions: "1. Find a long stick or broom handle that is at least 6 feet long, and set it up so that it is held horizontally by two people, one on each end.
  2. Players should form a line behind the stick, and take turns attempting to pass under it.
  3. The stick should start at a comfortable height and then gradually be lowered with each round, typically by a few inches.
  4. To pass under the stick, players must bend backwards and pass under the stick without touching it or falling over.
  5. If a player touches the stick or falls over, they are out of the game.
  6. The winner is the last person left in the game after everyone else has been eliminated.
  7. For an added challenge, players can try to pass under the stick while holding a cup of water or another object in their hand.
  8. Enjoy and have fun!"
)

jousting_contest = Game.create(
  name: "Jousting Tournament",
  materials: "Two wooden horses, two wooden lances, helmets, and shields",
  description: "In this game, two players compete in a medieval-style jousting tournament. Each player rides a wooden horse and uses a wooden lance to try to knock their opponent off their horse. The player who successfully knocks their opponent off their horse the most times within a set time period wins the game.",
  instructions: "Each player chooses a wooden horse, helmet, and shield. Players take turns attempting to knock their opponent off their horse using the wooden lance. The player who successfully knocks their opponent off their horse the most times within a set time period (e.g. 10 minutes) wins the game."
)


puts 'Connecting Games with a party theme...'

PartyGame.create(
  party: eighties_party,
  game: rubiks_cube_contest
)

PartyGame.create(
  party: eighties_party,
  game: moon_walking_contest
)

PartyGame.create(
  party: fiesta,
  game: pinata_smash
)

PartyGame.create(
  party: great_gatsby_party,
  game: charleston_dance_off
)

PartyGame.create(
  party: bond_007_party,
  game: murderer
)

PartyGame.create(
  party: halloween_bash,
  game: costume_contest
)

PartyGame.create(
  party: seventies_disco_party,
  game: disco_danceoff
)

PartyGame.create(
  party: tropical_luau,
  game: limbo_contest
)

PartyGame.create(
  party: medieval_feast,
  game: jousting_contest
)

PartyGame.create(
  party: carnival,
  game: limbo_contest
)

puts 'Finished!'
