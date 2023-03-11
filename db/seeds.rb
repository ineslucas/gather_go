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
Party.delete_all
Edible.delete_all

puts 'Creating 9 party themes...'

# please note that 80s_party doesn't work as a variable name because of the number. So name must be eighties_party.
eighties_party = Party.create(
  name: '80s Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX4UtSsGT1Sbe" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Potato', # always displays
  # cocktails: 'Negroni', #always displays
  # mocktails: 'Virgin Mary Iced Tea' # only displays if mocktails: true
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/katiebharrell/80s-party/"></a>',
  game: 'Rubik\'s Cube Contest',
  description: 'Get ready to rock out to some of the best music from the 1980s at this totally rad party!',
  category: :dance
)

halloween_bash = Party.create(
  name: 'Halloween Bash',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX5he6FVGWbXQ" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Pumpkin Soup',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/kellieleclair/halloween-bash/"></a>',
  game: 'Costume Contest',
  description: 'Get ready for a spooky and fun-filled Halloween party with your friends!',
  category: :other
)

seventies_disco_party = Party.create(
  name: '70s Disco Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWYJ5kmTbkZiz" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Bellini Cocktail',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/mjdickey87/psychedelic-70s-party/"></a>',
  game: 'Disco Dance-off',
  description: 'Step back in time and groove to the disco beats at this 70s-themed party!',
  category: :dance
)

bond_007_party = Party.create(
  name: 'Bond 007 Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWZeGAZcEiZT2" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Vesper Martini',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/ckenny210/james-bond-party/"></a>',
  game: 'Spy Games',
  description: 'Dress up as your favorite Bond character and enjoy some shaken (not stirred) cocktails at this party!',
  category: :crime
)

great_gatsby_party = Party.create(
  name: 'Great Gatsby Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/7dymTwj4uVdzYsUsyu2ctV" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Old-Fashioned',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/fromh2hdesign/great-gatsby-party/"></a>',
  game: 'Charleston Dance-off',
  description: 'Put on your flapper dress and sip some cocktails at this elegant Great Gatsby-themed party!',
  category: :crime
)

carnival_party = Party.create(
  name: 'Carnival Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/3g0fjKpYrXZ6Bhw0oJ2bu6" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Margarita',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/Glannce/brazilian-carnival-party/"></a>',
  game: 'Pinata Bash',
  description: 'Get ready to party with colorful masks, tasty snacks, and fun games at this carnival-themed party!',
  category: :dance
)

tropical_luau = Party.create(
  name: 'Tropical Luau',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX8Uebhn9wzrS" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Mai Tai',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/catchmyparty/hawaiian-luau-party/"></a>',
  game: 'Limbo Contest',
  description: 'Escape to a tropical paradise with this fun and festive luau party!',
  category: :dance
)

medieval_feast = Party.create(
  name: 'Medieval Feast',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWVnCMeOKJry5" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Roast Chicken and Vegetables',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/retrogirl2/medieval-party/"></a>',
  game: 'Jousting Tournament',
  description: 'Travel back in time to the Middle Ages with this medieval feast party!',
  category: :dance
)

fiesta = Party.create(
  name: 'Fiesta',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWXupFIUw7TOC" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Margaritas',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/dailyelegance/fiesta/"></a>',
  game: 'Piñata Smash',
  description: 'Get ready to fiesta with this fun and colorful party theme!',
  category: :other
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

puts 'Finally creating some mocktails...'

virgin_margarita = Edible.create(
  name: "Virgin Margarita",
  category: :mocktail,
  has_alcohol: false,
  description: "The Virgin Margarita is a non-alcoholic version of the classic Margarita cocktail. It's a refreshing and tangy drink that's perfect for those who want to enjoy the taste of a Margarita without the alcohol.",
  ingredients: "3 oz lime juice, 2 oz orange juice, 1 oz simple syrup, salt (for rimming), lime wedge (for garnish), ice",
  instructions: "Rub a lime wedge around the rim of a margarita glass, and dip the rim into salt to coat it. Fill a shaker with ice, and add the lime juice, orange juice, and simple syrup. Shake well, and strain into the salt-rimmed glass over ice. Garnish with a lime wedge. Enjoy!"
)


puts 'Creating Party Edibles...'

# Potato Skins are now available as an "Edible" associated with the 80s party - will show up when 80's party mains are called
PartyEdible.create(
  party: eighties_party,
  edible: potato_skins,
)

PartyEdible.create(
  party: eighties_party,
  edible: negroni,
)

# Margarita is now available as an "Edible" associated with the carnival party - will show up when Carnival Party's cocktails are called
PartyEdible.create(
  party: carnival_party,
  edible: margarita,
)

# Virgin Margarita is now available as an "Edible" associated with the carnival party - will show up when Carnival Party's mocktails are called
PartyEdible.create(
  party: carnival_party,
  edible: virgin_margarita,
)

puts 'Finished!'
