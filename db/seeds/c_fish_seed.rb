sussex = County.find_by_name("Sussex")
# 10 x fish/shellfish:

#mackerel
mackerel = Ingredient.new(
  food_group: @fish,
  name: "Mackerel",
  binomial: "Scomber scombrus",
  description: "A relative of the tuna, mackerel is one of Sussex’s more striking fish. Its slick silver body has unmistakeable blue-green striping along the top. This fish must always be on the move in order to breathe. Mackerel is plentiful, which is good news for health lovers as this oily fish is rich in omega-3."
  )
mackerel.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/03/Mackerel-fish-locally-caught-sustainable-devon.jpg?lossy=1&strip=1&webp=1"
mackerel.remote_background_picture_url = "https://live.staticflickr.com/2456/3714416458_1abfda650a_b.jpg"
mackerel.save!

IngredientSeason.create(
  county: sussex,
  ingredient: mackerel,
  start: Date.new(2019,6,1),
  end: Date.new(2019,8,31)
  )

#European flounder
european_flounder = Ingredient.new(
  food_group: @fish,
  name: "European Flounder",
  binomial:"Platichthys flesus",
  description: "The flounder, like the place, can tolerate fresh water, so in the spring it can be found in the Ouse and Adur. Interestingly, the flounder only requires a few inches of water to survive.",
  )
european_flounder.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/03/Flounder-freshly-stored-local-fish-south-west.jpg?lossy=1&strip=1&webp=1"
european_flounder.remote_background_picture_url= "https://live.staticflickr.com/844/43413684192_87cf2c6a7d_o.jpg"
european_flounder.save!

IngredientSeason.create(
  county: sussex,
  ingredient: european_flounder,
  start: Date.new(2019,9,1),
  end:Date.new(2019,11,30)
  )

#scallop
scallop = Ingredient.new(
  food_group: @fish,
  name: "Scallop",
  binomial:"Pectinidae",
  description: "The scallop’s distinctive shell has been immortalised in Botticelli’s The Birth of Venus. The scallop is made up of two edible parts – the white scallop (the muscle) and the orange coral (the roe)."
  )
scallop.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/02/Scallops-shellfish-fishing-fresh-caught.jpg?lossy=1&strip=1&webp=1"
scallop.remote_background_picture_url = "https://live.staticflickr.com/570/22928282804_01d1d97ef3_o.jpg"
scallop.save!

IngredientSeason.create(
  county: sussex,
  ingredient: scallop,
  start: Date.new(2019,2,15),
  end: Date.new(2019,5,31)
  )
#brown crab
brown_crab = Ingredient.new(
  food_group: @fish,
  name: "Brown crab",
  binomial: "Cancer pagurus",
  description: "The Sussex coast is famous for its brown crab. Easily identifiable from its distinctive pie crust shell, brown crab meat is succulent and sweet."

  )
brown_crab.remote_thumbnail_picture_url  = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/03/Brown-crab-freshly-caught-local-fish.jpg?lossy=1&strip=1&webp=1"
brown_crab.remote_background_picture_url = "https://live.staticflickr.com/7741/18398874185_c7aab0e4af_o.jpg"
brown_crab.save!

IngredientSeason.create(
  county: sussex,
  ingredient:brown_crab,
  start: Date.new(2019,3,1),
  end:Date.new(2019,8,31)
  )
#tub gurnard
tub_gurnard = Ingredient.new(
  food_group: @fish,
  name: "Tub Gurnard",
  binomial: "Chelidonichthys lucerna",
  description: "Gurnard are one of the Sussex coast’s more colourful residents. They have a characteristic red body with blue fins. They are also an unusual looking fish. Its spiny armoured head encloses a gaping mouth, and its prickly fins are finger-like to help it crawl along the sea floor."
  )
tub_gurnard.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/02/Gurnards-fresh-fish-locally-caught.jpg?lossy=1&strip=1&webp=1"
tub_gurnard.remote_background_picture_url = "https://live.staticflickr.com/8237/8557372018_dcae2d07de_o.jpg"
tub_gurnard.save!

IngredientSeason.create(
  county: sussex,
  ingredient: tub_gurnard,
  start:Date.new(2019,1,1),
  end:Date.new(2019,12,31)
  )
#seabass
sea_bass = Ingredient.new(
  food_group: @fish,
  name: "Sea Bass",
  binomial: "Dicentrarchus labrax",
  description: "A very popular fish, sea bass are silver in colour with dark fins. This attractive body conceals sharp gill covers and prickly spines.  Probably best left to Dan’s fishermen."
  )
sea_bass.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/02/Sea-bass-european-1.jpg?lossy=1&strip=1&webp=1"
sea_bass.remote_background_picture_url = "https://www.aquanaria.com/wp-content/uploads/2018/10/lubina-aquanaria-2-1.jpg"
sea_bass.save!

IngredientSeason.create(
  county: sussex,
  ingredient: sea_bass,
  start: Date.new(2019,3,1),
  end: Date.new(2019,5,1)
  )
IngredientSeason.create(
  county: sussex,
  ingredient: sea_bass,
  start: Date.new(2019,11,1),
  end: Date.new(2020,1,15)
  )

#herring
herring = Ingredient.new(
  food_group: @fish,
  name: "Herring",
  binomial: "Clupea harengus",
  description: "Not only prized for its flesh, herring’s roe is also a delicacy. Herring are silver on bottom and blue on top, hence the phrase “red herring”. Young herring are known as whitebait."

  )
herring.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/03/Herring-fish-images-sustainably-caught-fish.jpg?lossy=1&strip=1&webp=1"
herring.remote_background_picture_url = "https://images.unsplash.com/photo-1565062044382-95c12c17f062?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
herring.save!

IngredientSeason.create(
  county: sussex,
  ingredient: herring,
  start: Date.new(2019,9,1),
  end: Date.new(2019,9,30)
  )
#lobster
lobster = Ingredient.new(
  food_group: @fish,
  name: "Lobster",
  binomial: "Homarus gammarus",
  description: "The lobster is arguably the king of shellfish. The European lobster, the species commonly found in Sussex, is blue in colour, apart from its antennae which are bright red. Its left claw is smaller than the right. The left is used for precise cutting, and the right is dedicated to crushing."
  )
lobster.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/02/Lobster-fresh-european-fish-market.jpg?lossy=1&strip=1&webp=1"
lobster.remote_background_picture_url = "https://live.staticflickr.com/8494/8326884721_343c515c39_o.jpg"
lobster.save!

IngredientSeason.create(
  county: sussex,
  ingredient: lobster,
  start: Date.new(2019,6,1),
  end:Date.new(2019,8,31)
  )
#monkfish
monkfish = Ingredient.new(
  food_group: @fish,
  name: "Monkfish",
  binomial: "Lophius",
  description: "Once referred to as “the poor man’s lobster”, monkfish is now a delicacy in its own right. Like all angler fish, the monk fish bears a strong resemblance to a sea monster."

  )
monkfish.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/02/Monk-fish-tail-fresh-fish-local-caught.jpg?lossy=1&strip=1&webp=1"
monkfish.remote_background_picture_url = "https://live.staticflickr.com/5223/5616816318_50013f09e2_b.jpg"
monkfish.save!

IngredientSeason.create(
  county: sussex,
  ingredient: monkfish,
  start: Date.new(2019,3,1),
  end: Date.new(2019,5,31)
  )
#red mullet
red_mullet = Ingredient.new(
  food_group: @fish,
  name: "Red Mullet",
  binomial: "Mullus barbatus",
  description: "Unrelated to the grey mullet, this fish was a prized pet in ancient times. The Romans kept red mullet in ponds, where they would be trained to come and feed at the ringing of a bell or a call from their keeper. These fish were so coveted that they frequently sold for their weight in silver."
  )
red_mullet.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/02/Red-mullet-freshly-caught.jpg?lossy=1&strip=1&webp=1"
red_mullet.remote_background_picture_url = "https://live.staticflickr.com/1658/25150804489_eb76a0908d_o.jpg"
red_mullet.save!

IngredientSeason.create(
  county: sussex,
  ingredient: red_mullet,
  start: Date.new(2019,6,1),
  end: Date.new(2019,8,31)
  )
