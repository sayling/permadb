# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
    first_name: 'Usey',
    last_name: 'User',
    username: 'user-101',
    location: 'Sydney, Australia',
    climate: 'Cool Temperate',
    short_bio: 'I\'m a normal user. I do normally things. I think...',
    long_bio: "Built like a compo with she'll be right bastard. Shazza got us some relo my as busy as a squizz. Built like a ironman no worries she'll be right grundies. It'll be bodgy bloody lets throw a dropkick. She'll be right road train heaps stands out like a gone walkabout. Lets throw a cut snake my come a uluru. Flat out like a cream heaps flat out like a strewth.dinky-di also stands out like a hottie. As busy as a wuss when stands out like a donger. Trent from punchy lippy gutful of coathanger. She'll be right ridgy-didge mate it'll be rack off. Mad as a boozer bloody as cross as a ironman. Trent from punchy vee dub how as cunning as a longneck. bizzo to he's got a massive no dramas. Come a ridgy-didge with mad as a bored sh*tless. Come a rock up shazza got us some barrack. Flat out like a spit the dummy where we're going bogged. Get a dog up ya no dramas when as cunning as a galah.",
    role: user
)

User.create(
    first_name: 'Modey',
    last_name: 'Moderator',
    username: 'moderator-202',
    location: 'London, England',
    climate: 'Hot Arid',
    short_bio: 'I\'m a moderator, and I can moderate things. Amazing, right?!',
    long_bio: "Tattooed butcher +1, Schlitz Etsy trust fund stumptown Carles Wes Anderson keffiyeh tote bag Tonx. Gastropub bicycle rights put a bird on it, cliche banjo selfies brunch Echo Park swag mumblecore street art. Chillwave sartorial forage cardigan Wes Anderson. Seitan hella irony, keytar before they sold out Vice Kickstarter deep v single-origin coffee typewriter Schlitz. Forage twee 3 wolf moon irony, kogi paleo disrupt lo-fi YOLO. Next level meh +1 pour-over you probably haven't heard of them jean shorts, single-origin coffee DIY drinking vinegar actually dreamcatcher. Seitan Truffaut 3 wolf moon flannel, wolf kale chips tousled art party retro cliche small batch McSweeney's master cleanse pour-over.",
    role: moderator
)

User.create(
    first_name: 'Addy',
    last_name: 'Administrator',
    username: 'super_awesome_wizard',
    location: 'The Panopticon, Gallifrey',
    climate: 'Tropical',
    short_bio: 'OMG I am the super Administrator, I can do some amazing things, Like delete the whole website!',
    long_bio: "Tattooed butcher +1, Schlitz Etsy trust fund stumptown Carles Wes Anderson keffiyeh tote bag Tonx. Gastropub bicycle rights put a bird on it, cliche banjo selfies brunch Echo Park swag mumblecore street art. Chillwave sartorial forage cardigan Wes Anderson. Seitan hella irony, keytar before they sold out Vice Kickstarter deep v single-origin coffee typewriter Schlitz. Forage twee 3 wolf moon irony, kogi paleo disrupt lo-fi YOLO. Next level meh +1 pour-over you probably haven't heard of them jean shorts, single-origin coffee DIY drinking vinegar actually dreamcatcher. Seitan Truffaut 3 wolf moon flannel, wolf kale chips tousled art party retro cliche small batch McSweeney's master cleanse pour-over.",
    role: admin
)
