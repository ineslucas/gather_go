# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
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

<<<<<<< HEAD
party1 = Party.create(
  name: '80s Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX4UtSsGT1Sbe" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Cod', # always displays
  # cocktails: 'Negroni', #always displays
  # mocktails: 'Virgin Mary Iced Tea' # only displays if mocktails: true
  pinterest: 'https://www.pinterest.com/search/pins/?q=80%27s%20party&rs=typed&term_meta[]=80%27s%7Ctyped&term_meta[]=party%7Ctyped',
=======
Party.destroy_all

Party.create(
  name: '80s Party',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX4UtSsGT1Sbe" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  recipe: 'Negroni',
  pinterest: '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://www.pinterest.com/kateschott/disco-dance-party/"></a>',
>>>>>>> master
  game: 'Rubik\'s Cube Contest',
  description: 'Get ready to rock out to some of the best music from the 1980s at this totally rad party!',
  category: :dance
)

<<<<<<< HEAD
party2 = Party.create(
  name: 'Halloween Bash',
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX5he6FVGWbXQ" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Pumpkin Soup',
=======

Party.create(
  name: 'Halloween Bash',
  playlist: '<iframe src="https://open.spotify.com/embed/album/3S65jjsnKGpXpXltWm5hlB" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  recipe: 'Pumpkin Soup',
>>>>>>> master
  pinterest: 'https://www.pinterest.com/search/pins/?q=halloween%20party&rs=typed&term_meta[]=halloween%7Ctyped&term_meta[]=party%7Ctyped',
  game: 'Costume Contest',
  description: 'Get ready for a spooky and fun-filled Halloween party with your friends!',
  category: :other
)

party3 = Party.create(
  name: '70s Disco Party',
<<<<<<< HEAD
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWYJ5kmTbkZiz" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Bellini Cocktail',
=======
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX1Hya1sRqqxI" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  recipe: 'Bellini Cocktail',
>>>>>>> master
  pinterest: 'https://www.pinterest.com/search/pins/?q=70%27s%20disco%20party&rs=typed&term_meta[]=70%27s%7Ctyped&term_meta[]=disco%7Ctyped&term_meta[]=party%7Ctyped',
  game: 'Disco Dance-off',
  description: 'Step back in time and groove to the disco beats at this 70s-themed party!',
  category: :dance
)

party4 = Party.create(
  name: 'Bond 007 Party',
<<<<<<< HEAD
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWZeGAZcEiZT2" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Vesper Martini',
=======
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/16GR6kPg5ngwZK8TnHY2P7" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  recipe: 'Vesper Martini',
>>>>>>> master
  pinterest: 'https://www.pinterest.com/search/pins/?q=james%20bond%20party&rs=typed&term_meta[]=james%7Ctyped&term_meta[]=bond%7Ctyped&term_meta[]=party%7Ctyped',
  game: 'Spy Games',
  description: 'Dress up as your favorite Bond character and enjoy some shaken (not stirred) cocktails at this party!',
  category: :crime
)

party5 = Party.create(
  name: 'Great Gatsby Party',
<<<<<<< HEAD
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/7dymTwj4uVdzYsUsyu2ctV" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Old-Fashioned',
=======
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/2KUgTvXoqRZ3CoZs2g05fK" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  recipe: 'Old-Fashioned',
>>>>>>> master
  pinterest: 'https://www.pinterest.com/search/pins/?q=great%20gatsby%20party&rs=typed&term_meta[]=great%7Ctyped&term_meta[]=gatsby%7Ctyped&term_meta[]=party%7Ctyped',
  game: 'Charleston Dance-off',
  description: 'Put on your flapper dress and sip some cocktails at this elegant Great Gatsby-themed party!',
  category: :crime
)

party6 = Party.create(
  name: 'Carnival Party',
<<<<<<< HEAD
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/3g0fjKpYrXZ6Bhw0oJ2bu6" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Margarita',
=======
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/1mpj56eFDm7wtXnC9vRQ2a" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  recipe: 'Margarita',
>>>>>>> master
  pinterest: 'https://www.pinterest.com/search/pins/?q=carnival%20party&rs=typed&term_meta[]=carnival%7Ctyped&term_meta[]=party%7Ctyped',
  game: 'Pinata Bash',
  description: 'Get ready to party with colorful masks, tasty snacks, and fun games at this carnival-themed party!',
  category: :dance
)

party7 = Party.create(
  name: 'Tropical Luau',
<<<<<<< HEAD
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX8Uebhn9wzrS" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Mai Tai',
=======
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/2h489IvM4BnfA5Dyf9z52w" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  recipe: 'Mai Tai',
>>>>>>> master
  pinterest: 'https://www.pinterest.com/search/pins/?q=tropical%20luau%20party&rs=typed&term_meta[]=tropical%7Ctyped&term_meta[]=luau%7Ctyped&term_meta[]=party%7Ctyped',
  game: 'Limbo Contest',
  description: 'Escape to a tropical paradise with this fun and festive luau party!',
  category: :dance
)

party8 = Party.create(
  name: 'Medieval Feast',
<<<<<<< HEAD
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWVnCMeOKJry5" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Roast Chicken and Vegetables',
  pinterest: 'https://www.pinterest.com/search/pins/?q=medieval%20feast&rs=typed&term_meta[]=medieval%7Ctyped&term_meta[]=feast%7Ctyped',
=======
  playlist: '',
  recipe: 'Roast Chicken and Vegetables',
  pinterest: '<iframe src="https://open.spotify.com/embed/playlist/2Y73njm5d4enXmGuuZokdl" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
>>>>>>> master
  game: 'Jousting Tournament',
  description: 'Travel back in time to the Middle Ages with this medieval feast party!',
  category: :dance
)

party9 = Party.create(
  name: 'Fiesta',
<<<<<<< HEAD
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWXupFIUw7TOC" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  # recipe: 'Margaritas',
=======
  playlist: '<iframe src="https://open.spotify.com/embed/playlist/723VT4ai8nIMHtjI17u4zq" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>',
  recipe: 'Margaritas',
>>>>>>> master
  pinterest: 'https://www.pinterest.com/search/pins/?q=fiesta%20party&rs=typed&term_meta[]=fiesta%7Ctyped&term_meta[]=party%7Ctyped',
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
