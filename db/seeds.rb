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

puts 'Creating a few edibles...'

cod = Edible.create(
  name: "Cod",
  category: :main,
  has_alcohol: false,
)

tequila_sunrise = Edible.create(
  name: "Tequila Sunrisw",
  category: :cocktail,
  has_alcohol: true,
)

iced_tea = Edible.create(
  name: "Iced Tea",
  category: :cocktail,
  has_alcohol: false,
)

puts 'Creating 9 party themes...'

party1 = Party.create(
  name: '80s Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX4UtSsGT1Sbe" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Cod', # always displays
  # cocktails: 'Negroni', #always displays
  # mocktails: 'Virgin Mary Iced Tea' # only displays if mocktails: true
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/katiebharrell/80s-party/"></a>',
  game: 'Rubik\'s Cube Contest',
  description: 'Get ready to rock out to some of the best music from the 1980s at this totally rad party!',
  category: :dance
)

party2 = Party.create(
  name: 'Halloween Bash',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX5he6FVGWbXQ" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Pumpkin Soup',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/kellieleclair/halloween-bash/"></a>',
  game: 'Costume Contest',
  description: 'Get ready for a spooky and fun-filled Halloween party with your friends!',
  category: :other
)

party3 = Party.create(
  name: '70s Disco Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWYJ5kmTbkZiz" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Bellini Cocktail',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/mjdickey87/psychedelic-70s-party/"></a>',
  game: 'Disco Dance-off',
  description: 'Step back in time and groove to the disco beats at this 70s-themed party!',
  category: :dance
)

party4 = Party.create(
  name: 'Bond 007 Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWZeGAZcEiZT2" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Vesper Martini',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/ckenny210/james-bond-party/"></a>',
  game: 'Spy Games',
  description: 'Dress up as your favorite Bond character and enjoy some shaken (not stirred) cocktails at this party!',
  category: :crime
)

party5 = Party.create(
  name: 'Great Gatsby Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/7dymTwj4uVdzYsUsyu2ctV" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Old-Fashioned',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/fromh2hdesign/great-gatsby-party/"></a>',
  game: 'Charleston Dance-off',
  description: 'Put on your flapper dress and sip some cocktails at this elegant Great Gatsby-themed party!',
  category: :crime
)

party6 = Party.create(
  name: 'Carnival Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/3g0fjKpYrXZ6Bhw0oJ2bu6" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Margarita',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/Glannce/brazilian-carnival-party/"></a>',
  game: 'Pinata Bash',
  description: 'Get ready to party with colorful masks, tasty snacks, and fun games at this carnival-themed party!',
  category: :dance
)

party7 = Party.create(
  name: 'Tropical Luau',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX8Uebhn9wzrS" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Mai Tai',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/catchmyparty/hawaiian-luau-party/"></a>',
  game: 'Limbo Contest',
  description: 'Escape to a tropical paradise with this fun and festive luau party!',
  category: :dance
)

party8 = Party.create(
  name: 'Medieval Feast',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWVnCMeOKJry5" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Roast Chicken and Vegetables',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/retrogirl2/medieval-party/"></a>',
  game: 'Jousting Tournament',
  description: 'Travel back in time to the Middle Ages with this medieval feast party!',
  category: :dance
)

party9 = Party.create(
  name: 'Fiesta',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWXupFIUw7TOC" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Margaritas',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/dailyelegance/fiesta/"></a>',
  game: 'Piñata Smash',
  description: 'Get ready to fiesta with this fun and colorful party theme!',
  category: :other
)

# Add more parties as needed...

puts 'Creating Party Edibles...'

PartyEdible.create(
  party: party9,
  edible: cod,
)

PartyEdible.create(
  party: party8,
  edible: iced_tea,
)

puts 'Finished!'
