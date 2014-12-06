# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(
    first_name: 'Usey',
    last_name: 'User',
    email: 'email@email.com',
    password: 'blahblah',
    username: 'user-101',
    location: 'Sydney, Australia',
    climate: 'Cool Temperate',
    short_bio: 'I\'m a normal user. I do normally things. I think...',
    long_bio: "Built like a compo with she'll be right bastard. Shazza got us some relo my as busy as a squizz. Built like a ironman no worries she'll be right grundies. It'll be bodgy bloody lets throw a dropkick. She'll be right road train heaps stands out like a gone walkabout. Lets throw a cut snake my come a uluru. Flat out like a cream heaps flat out like a strewth.dinky-di also stands out like a hottie. As busy as a wuss when stands out like a donger. Trent from punchy lippy gutful of coathanger. She'll be right ridgy-didge mate it'll be rack off. Mad as a boozer bloody as cross as a ironman. Trent from punchy vee dub how as cunning as a longneck. bizzo to he's got a massive no dramas. Come a ridgy-didge with mad as a bored sh*tless. Come a rock up shazza got us some barrack. Flat out like a spit the dummy where we're going bogged. Get a dog up ya no dramas when as cunning as a galah.",
    role: 'user'
)

User.create(
    first_name: 'Modey',
    last_name: 'Moderator',
    email: 'email1@email.com',
    password: 'blahblah',
    username: 'moderator-202',
    location: 'London, England',
    climate: 'Hot Arid',
    short_bio: 'I\'m a moderator, and I can moderate things. Amazing, right?!',
    long_bio: "Tattooed butcher +1, Schlitz Etsy trust fund stumptown Carles Wes Anderson keffiyeh tote bag Tonx. Gastropub bicycle rights put a bird on it, cliche banjo selfies brunch Echo Park swag mumblecore street art. Chillwave sartorial forage cardigan Wes Anderson. Seitan hella irony, keytar before they sold out Vice Kickstarter deep v single-origin coffee typewriter Schlitz. Forage twee 3 wolf moon irony, kogi paleo disrupt lo-fi YOLO. Next level meh +1 pour-over you probably haven't heard of them jean shorts, single-origin coffee DIY drinking vinegar actually dreamcatcher. Seitan Truffaut 3 wolf moon flannel, wolf kale chips tousled art party retro cliche small batch McSweeney's master cleanse pour-over.",
    role: 'moderator'
)

User.create(
    first_name: 'Addy',
    last_name: 'Administrator',
    email: 'email2@email.com',
    password: 'blahblah',
    username: 'super_awesome_wizard',
    location: 'The Panopticon, Gallifrey',
    climate: 'Tropical',
    short_bio: 'OMG I am the super Administrator, I can do some amazing things, Like delete the whole website!',
    long_bio: "Tattooed butcher +1, Schlitz Etsy trust fund stumptown Carles Wes Anderson keffiyeh tote bag Tonx. Gastropub bicycle rights put a bird on it, cliche banjo selfies brunch Echo Park swag mumblecore street art. Chillwave sartorial forage cardigan Wes Anderson. Seitan hella irony, keytar before they sold out Vice Kickstarter deep v single-origin coffee typewriter Schlitz. Forage twee 3 wolf moon irony, kogi paleo disrupt lo-fi YOLO. Next level meh +1 pour-over you probably haven't heard of them jean shorts, single-origin coffee DIY drinking vinegar actually dreamcatcher. Seitan Truffaut 3 wolf moon flannel, wolf kale chips tousled art party retro cliche small batch McSweeney's master cleanse pour-over.",
    role: 'admin'
)

Plant.create(
    common_name: 'Flat-leaf Parsley',
    scientific_name: 'Petroselinum crispum neapolitanum',
    image: "http://1.bp.blogspot.com/-duReaZc6iGI/T2H6T4JM9BI/AAAAAAAAAU8/pQpt8EMHlZ0/s1600/5+Parsley+flat+leaf.jpg",
    description: "Parsley is widely used in Middle Eastern, European, Brazilian and American cooking. Curly leaf parsley is used often as a garnish. Green parsley is used frequently as a garnish on potato dishes (boiled or mashed potatoes), on rice dishes (risotto or pilaf), on fish, fried chicken, lamb, goose, and steaks, as well in meat or vegetable stews (including shrimp creole, beef bourguignon, goulash, or chicken paprikash). Where Parsley it grows as a biennial, in the first year, it forms a rosette of tripinnate leaves 10–25 cm long with numerous 1–3 cm leaflets, and a taproot used as a food store over the winter.",
    country_of_origin: "Central Mediterranean",
    botanical_properties: "Parsley is a shade-tolerant herbaceous shrub, which can grow to 1m in height. It requires moderate watering once established and is frost-sensitive.",
    domestic_properties: "Parsley is a source of Flavonoid, and Antioxidants (especially luteolin), apigenin, folic acid, vitamin K, vitamin C, and vitamin A. Half a of tablespoon (a gram) of dried parsley contains about 6.0 µg of lycopene and 10.7 µg of alpha carotene as well as 82.9 µg of Lutein+Zeaxanthin and 80.7 µg of beta carotene.
Excessive consumption of parsley should be avoided by pregnant women. It is safe in normal food quantities, but large amounts may have uterotonic effects.",
    climate: "Temperate",
    growing_instructions: "Parsley grows best in moist, well-drained soil, with full sun. It grows best between 22–30 °C, and usually is grown from seed. Germination is slow, taking four to six weeks, and it often is difficult because of furanocoumarins in its seed coat. Typically, plants grown for the leaf crop are spaced 10 cm apart, while those grown as a root crop are spaced 20 cm apart to allow for the root development",
    user: User.first
)

Animal.create(
  common_name: 'Australorp',
  scientific_name: 'Unknown',
  image: "http://www.barterandsons.com.au/images/products/Australorp.jpg",
  description: "The Australorp is a chicken breed of Australian origin, developed as utility breed with a focus on egg laying. It achieved world wide popularity in the 1920s after the breed broke numerous world records for number of eggs laid and has been a popular breed in the western world since.",
  country_of_origin: 'Australia',
  biological_properties: 'A breed developed for their superior egg-laying abilities, the Australorp is a popular choice among poultry rearers. They are relatively large birds, with gentle temperaments - and are generally considered to be quiet birds.',
  domestic_properties: 'Due to their egg-laying abilities and their large size, the Australorp is considered an optimal breed of chicken for both meat and eggs. As they are considered gentle and quiet birds, the Australorp is often a favourite for first-time chicken owners.',
  best_climate: 'Most climates',
  rearing_info: 'All chickens require room in which to run around, access to scratchings and clean water. Chickens also enjoy dust-baths, an activity cruicial for their mental health. For areas which require it, additional food (in the form of pellets or supplemented feed) can be provided in addition to foraged food.',
  diet: 'Insects, small seeds, vegetable scraps, grains, pellets (formulated for chickens).',
  user: User.first
)

