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
  # recipe: 'Potato', # always displays
  # cocktails: 'Negroni', #always displays
  # mocktails: 'Virgin Mary Iced Tea' # only displays if mocktails: true
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/katiebharrell/80s-party/"></a>',
  # game: 'Rubik\'s Cube Contest',
  description: 'Get ready to rock out to some of the best music from the 1980s at this totally rad party!',
  category: :dance
)

halloween_bash = Party.create(
  name: 'Halloween Bash',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX5he6FVGWbXQ" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Pumpkin Soup',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/kellieleclair/halloween-bash/"></a>',
  # game: 'Costume Contest',
  description: 'Get ready for a spooky and fun-filled Halloween party with your friends!',
  category: :other
)

seventies_disco_party = Party.create(
  name: '70s Disco Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWYJ5kmTbkZiz" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Bellini Cocktail',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/mjdickey87/psychedelic-70s-party/"></a>',
  # game: 'Disco Dance-off',
  description: 'Step back in time and groove to the disco beats at this 70s-themed party!',
  category: :dance
)

bond_007_party = Party.create(
  name: 'Bond 007 Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWZeGAZcEiZT2" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Vesper Martini',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/ckenny210/james-bond-party/"></a>',
  # game: 'Spy Games',
  description: 'Dress up as your favorite Bond character and enjoy some shaken (not stirred) cocktails at this party!',
  category: :crime
)

great_gatsby_party = Party.create(
  name: 'Great Gatsby Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/7dymTwj4uVdzYsUsyu2ctV" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Old-Fashioned',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/fromh2hdesign/great-gatsby-party/"></a>',
  # game: 'Charleston Dance-off',
  description: 'Put on your flapper dress and sip some cocktails at this elegant Great Gatsby-themed party!',
  category: :crime
)

carnival_party = Party.create(
  name: 'Carnival Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/3g0fjKpYrXZ6Bhw0oJ2bu6" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Margarita',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/Glannce/brazilian-carnival-party/"></a>',
  # game: 'Pinata Bash',
  description: 'Get ready to party with colorful masks, tasty snacks, and fun games at this carnival-themed party!',
  category: :dance
)

tropical_luau = Party.create(
  name: 'Tropical Luau',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX8Uebhn9wzrS" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Mai Tai',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/catchmyparty/hawaiian-luau-party/"></a>',
  # game: 'Limbo Contest',
  description: 'Escape to a tropical paradise with this fun and festive luau party!',
  category: :dance
)

medieval_feast = Party.create(
  name: 'Medieval Feast',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWVnCMeOKJry5" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Roast Chicken and Vegetables',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/retrogirl2/medieval-party/"></a>',
  # game: 'Jousting Tournament',
  description: 'Travel back in time to the Middle Ages with this medieval feast party!',
  category: :dance
)

fiesta = Party.create(
  name: 'Fiesta',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWXupFIUw7TOC" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Margaritas',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/dailyelegance/fiesta/"></a>',
  # game: 'Piñata Smash',
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


puts 'Finally creating some mocktails...'

virgin_margarita = Edible.create(
  name: "Virgin Margarita",
  category: :mocktail,
  has_alcohol: false,
  description: "The Virgin Margarita is a non-alcoholic version of the classic Margarita cocktail. It's a refreshing and tangy drink that's perfect for those who want to enjoy the taste of a Margarita without the alcohol.",
  ingredients: "3 oz lime juice, 2 oz orange juice, 1 oz simple syrup, salt (for rimming), lime wedge (for garnish), ice",
  instructions: "Rub a lime wedge around the rim of a margarita glass, and dip the rim into salt to coat it. Fill a shaker with ice, and add the lime juice, orange juice, and simple syrup. Shake well, and strain into the salt-rimmed glass over ice. Garnish with a lime wedge. Enjoy!"
)

puts 'Creating Party Edibles - aka edibles which are associated with parties...'

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

PartyEdible.create(
  party: great_gatsby_party,
  edible: old_fashioned,
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

piñata_smash = Game.create(
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
  game: piñata_smash
)

PartyGame.create(
  party: great_gatsby_party,
  game: charleston_dance_off
)

puts 'Finished!'
