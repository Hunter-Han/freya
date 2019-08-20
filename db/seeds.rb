# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' } { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting everthing"
County.destroy_all
FoodGroup.destroy_all
Ingredient.destroy_all
IngredientAtVendor.destroy_all
IngredientSeason.destroy_all
Review.destroy_all
Vendor.destroy_all
User.destroy_all

vegetable = FoodGroup.create!(name: "Vegetable")
fruit = FoodGroup.create!(name: "Fruit")
fish = FoodGroup.create!(name: "Fish")
meat = FoodGroup.create!(name: "Meat")

counties_array = %w[Bedfordshire Berkshire Buckinghamshire Cambridgeshire Cheshire
  Cornwall Cumberland Derbyshire Devon Dorset County Durham Essex Gloucestershire
  Hampshire Herefordshire Hertfordshire Huntingdonshire Kent Lancashire Leicestershire
  Lincolnshire Middlesex Norfolk Northamptonshire Northumberland Nottinghamshire
  Oxfordshire Rutland Shropshire Somerset Staffordshire Suffolk Surrey Sussex
  Warwickshire Westmorland Wiltshire Worcestershire Yorkshire]

counties_array.each do |county|
  County.create!(name: county)
end

sussex = County.find_by_name("Sussex")
# 10 x fish/shellfish:

#mackerel
mackerel = Ingredient.new(
  food_group: fish,
  name: "Mackerel",
  binomial: "Scomber scombrus"
  description: "A relative of the tuna, mackerel is one of Sussex’s more striking fish. Its slick silver body has unmistakeable blue-green striping along the top. This fish must always be on the move in order to breathe. Mackerel is plentiful, which is good news for health lovers as this oily fish is rich in omega-3."
  )
mackerel.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/03/Mackerel-fish-locally-caught-sustainable-devon.jpg?lossy=1&strip=1&webp=1"
mackerel.remote_background_picture_url = "https://www.flickr.com/photos/hazehaze/3714416458/in/photolist-6EemB5-s3qe4r-5UEm5Y-CM8y83-cA8rtQ-9kZ2hT-qC4eV4-eJcspq-6xCTvu-gotaE8-fdpFon-d8Cuvu-MxBNGH-cA8rmy-pNgswV-fjkRLh-MWobRZ-3cGMUN-JzsnVD-5oKBNb-HJJ7j-Tcy1Ci-9f5Ymq-7jDBvb-iRzu2a-cHrVZo-Tr6uA7-4D2j8B-a6P8LD-3K58zx-Huy5B-9MnjtZ-piQub-2acQjM-7gAD6g-fbTZQP-vYqzeT-cA7hk1-7js8vi-9XqWMG-3W9KcJ-QH8fpK-pqoZ7G-quM3rh-2fuXuo-6eUGCE-af4WEz-by5UWE-8TEjsV-9kKcyw"
mackerel.save

IngredientSeason.create(
  county: sussex,
  ingredient: mackerel
  start: Date.new(2019,06,01)
  end: Date.new(2019,08,31)
  )

#European flounder
european_flounder = Ingredient.new(
  food_group: fish,
  name: "European Flounder",
  binomial:"Platichthys flesus"
  description: "The flounder, like the place, can tolerate fresh water, so in the spring it can be found in the Ouse and Adur. Interestingly, the flounder only requires a few inches of water to survive.",
  )
european_flounder.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/03/Flounder-freshly-stored-local-fish-south-west.jpg?lossy=1&strip=1&webp=1"
european_flounder.remote_background_picture_url= "https://www.flickr.com/photos/orangebuzz2000/43413684192/in/photolist-299jtNq-nDYinA-diGPZT-7vqrDL-nNEfKT-8sv6Ak-4EyA2Z-H5F6bU-8suThK-8suGQX-odggsV-25rGhgm-fQc2F7-GDFjzd-fs846c-fBpo44-8BinCG-H1oWwP-dzsuFp-75ryV9-dqTbPH-bHX7iV-FrSSY-obXKvF-efy7GT-nEaHhQ-XwgX8k-a7Q4De-hjDqWC-YvKibw-dzxZoJ-fHAmcA-WEyzR-chgYxJ-bvciYw-83Wgeu-dFUTTp-bvbe1o-bJ7kvZ-dx4ie6-dFUrSp-mYMnPE-nNCGzF-84dK3F-bJ76Qp-bvbdPE-2eoWd7x-2fHibLf-axFM5T-29FugGy"
european_flounder.save

IngredientSeason.create(
  county: sussex,
  ingredient: european_flounder,
  start: Date.new(2019,09,01),
  end:Date.new(2019,11,30)
  )

#scallop
scallop = Ingredient.new(
  food_group: fish,
  name: "Scallop",
  binomial:"Pectinidae",
  description: "The scallop’s distinctive shell has been immortalised in Botticelli’s The Birth of Venus. The scallop is made up of two edible parts – the white scallop (the muscle) and the orange coral (the roe)."
  )
scallop.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/02/Scallops-shellfish-fishing-fresh-caught.jpg?lossy=1&strip=1&webp=1"
scallop.remote_background_picture_url = "https://www.flickr.com/photos/jkornstaedt/22928282804/in/photolist-AW6rEL-eetfdc-fwjbjz-nLcXgi-HniRsa-9RdVX1-GxWwug-aDjnPQ-7HMFnF-DKfkb-7QkXc5-9iFYVS-8qirt5-7xNk5k-dq8Y5Y-53N1QC-5Uv4kM-eB5kMm-6nawNK-iiDe4Z-5QPFAV-pnvym8-2jSndU-q2PKFp-6Ssnhh-nmgMzu-7FuP5f-yeH1A8-78xCTY-ThEv4f-78iw3S-eaMGqz-273Nb33-eKCmbh-9c2ckv-sj2Mar-2XCv2F-dmu1zM-nWDiHC-Uz6oq2-bp1Bw9-qj6pcT-685bNi-a5Ljhh-Fbm2Wd-bTtdKR-buonRf-7VuDPN-UvsymY-7rJFTF"
scallop.save

IngredientSeason.create(
  county: sussex,
  ingredient: scallop,
  start: Date.new(2019,02,15)
  end: Date.new(2019,05,31)
  )
#brown crab
brown_crab = Ingredient.new(
  food_group: fish,
  name: "Brown crab",
  binomial: "Cancer pagurus"
  description: "The Sussex coast is famous for its brown crab. Easily identifiable from its distinctive pie crust shell, brown crab meat is succulent and sweet."

  )
brown_crab.remote_thumbnail_picture_url  = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/03/Brown-crab-freshly-caught-local-fish.jpg?lossy=1&strip=1&webp=1"
brown_crab.remote_background_picture_url = "https://www.flickr.com/photos/davemhuntphotography/18398874185/in/photolist-u2R3hH-qyCMJy-Fk62Dx-6eBpYb-dtxgr3-6exh8V-5RCwsb-22XnqwU-mTskaP-q4wC2r-8zpiPE-JxUAko-7ATBbT-6YwvCV-5thfvL-mZDaq2-3JCCsC-f4RrMU-bJBGBV-Hgwq7U-9zvcz6-8bGLcg-7LqirX-7uBa4V-6oT5yC-ePs4uo-dngzqo-nSxih9-76DJUG-aojm9Z-qydF7n-d1Ag7G-8ZJZNG-rvdSUZ-eNk9QG-ovG26M-gJBK5Q-bkF9PX-CDWJd2-7Auisw-2b6QXxU-rP8GQ-p3TXrR-cCg7iS-Ku1tbt-abobzV-5tpRer-f4T1Np-aDwokm-dJ7BET"
brown_crab.save

IngredientSeason.create(
  county: sussex,
  ingredient:brown_crab,
  start: Date.new(2019,03,01),
  end:Date.new(2019,08,31)
  )
#tub gurnard
tub_gurnard = Ingredient.new(
  food_group: fish,
  name: "Tub Gurnard",
  binomial: "Chelidonichthys lucerna",
  description: "Gurnard are one of the Sussex coast’s more colourful residents. They have a characteristic red body with blue fins. They are also an unusual looking fish. Its spiny armoured head encloses a gaping mouth, and its prickly fins are finger-like to help it crawl along the sea floor."
  )
tub_gurnard.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/02/Gurnards-fresh-fish-locally-caught.jpg?lossy=1&strip=1&webp=1"
tub_gurnard.remote_background_picture_url = "https://www.flickr.com/photos/oceanaeurope/8557372018/in/photolist-e3bLyS-GQ3jU-hifAAP-7JPcxS-bnddS-3j5Jvd-2wdZXk-jUjQk-bkiUA-pUiMi-bkiUy-7qPsFo-nFaTf-jUvfd-jUbad-nMhPFw-eAeKr-k7ucB-2ogiba-nFaTg-bkiUx-jUjQs-2ogi7e-wLyQg-jUjQq-5C8zWk-nGb3Y-2oiRWE-d4R8H-2wi4VQ-eAeKu-bnddV-jUvfa-Mp5Mh-jUbac-jUjQp-5axRYU-m5dnW-2JJ2qg-7qKwZ4-m5dnX-jJRMU-KcrKm-2wd1La-mmNWB-gMKfj-3bKofL-2wigt1-jEzM8-2wbJi4"
tub_gurnard.save

IngredientSeason.create(
  county: sussex,
  ingredient: tub_gurnard,
  start:Date.new(2019.01.01)
  end:Date.new(2019.12.31)
  )
#seabass
sea_bass = Ingredient.new(
  food_group: fish,
  name: "Sea Bass",
  binomial: "Dicentrarchus labrax"
  description: "A very popular fish, sea bass are silver in colour with dark fins. This attractive body conceals sharp gill covers and prickly spines.  Probably best left to Dan’s fishermen."
  )
sea_bass.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/02/Sea-bass-european-1.jpg?lossy=1&strip=1&webp=1"
seas_bass.remote_background_picture_url = "https://www.aquanaria.com/wp-content/uploads/2018/10/lubina-aquanaria-2-1.jpg"
sea_bass.save

IngredientSeason.create(
  county: sussex,
  ingredient: sea_bass
  start: Date.new(2019.03.01)
  end: Date.new(2019.05.01)
  )
IngredientSeason.create(
  county: sussex,
  ingredient: sea_bass
  start: Date.new(2019.11.01)
  end: Date.new(2020.01.15)
  )

#herring
herring = Ingredient.new(
  food_group: fish,
  name: "Herring",
  binomial: "Clupea harengus",
  description: "Not only prized for its flesh, herring’s roe is also a delicacy. Herring are silver on bottom and blue on top, hence the phrase “red herring”. Young herring are known as whitebait."

  )
herring.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/03/Herring-fish-images-sustainably-caught-fish.jpg?lossy=1&strip=1&webp=1"
herring.remote_background_picture_url = "https://www.flickr.com/photos/sabe/529521200/in/photolist-NMWcS-agTV7A-23tw8fx-agTEG5-24tPMgm-WXW3Qb-baFiWZ-4NreP3-TeXZxs-JSw9S1-agQHd4-5miKgW-PCzkm5-22UG7wY-26hYrcd-28gjhyh-U3PV7n-SSo6oq-dRVVeM-Vm135m-8VfWXf-4sH87T-6iDGTX-SBrenL-U4L3Lv-2fyZuXt-241bR7v-8QWVYN-66RKHk-2fyZjMZ-2cRpFK-bNJDC2-dfMd9k-HZdUoG-qA1WhC-6iEmCv-RKqxvz-US3mHJ-29QvA5k-6iJ8oS-bKPxHi-4ehhnV-2btc36k-2eL6crM-r5PVjD-bWCL8j-2f99VBR-9djmnR-22iRLQ4-WDwtkC"
herring.save

IngredientSeason.create(
  county: sussex,
  ingredient: herring,
  start: Date.new(2019,09,01),
  end: Date.new(2019,09,30)
  )
#lobster
lobster = Ingredient.new(
  food_group: fish,
  name: "Lobster",
  binomial: "Homarus gammarus"
  description: "The lobster is arguably the king of shellfish. The European lobster, the species commonly found in Sussex, is blue in colour, apart from its antennae which are bright red. Its left claw is smaller than the right. The left is used for precise cutting, and the right is dedicated to crushing."
  )
lobster.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/02/Lobster-fresh-european-fish-market.jpg?lossy=1&strip=1&webp=1"
lobster.remote_background_picture_url = "https://previews.123rf.com/images/shaunwilkinson/shaunwilkinson1608/shaunwilkinson160800006/61785071-close-up-of-some-lobster-pots.jpg"
lobster.save

IngredientSeason.create(
  county: sussex,
  ingredient: lobster,
  start: Date.new(2019,06,01),
  end:Date.new(2019,08,31)
  )
#monkfish
monkfish = Ingredient.new(
  food_group: fish,
  name: "Monkfish",
  binomial: "Lophius"
  description: "Once referred to as “the poor man’s lobster”, monkfish is now a delicacy in its own right. Like all angler fish, the monk fish bears a strong resemblance to a sea monster."

  )
monkfish.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/02/Monk-fish-tail-fresh-fish-local-caught.jpg?lossy=1&strip=1&webp=1"
monkfish.remote_background_picture_url = "https://www.flickr.com/photos/21510256@N02/5616816318/in/photolist-9ykDNE-bL7Hhc-7EUsCU-93LKb-39QLQD-5najLC-8wC2bh-52wG8x-DGUBZ-5othiX-anXHTC-rNKcs-nkAyRY-a7eV6P-bFpoJT-px3zsb-5driDh-jAbvG-rNL3v-6XboRj-5n64Ez-bxcZFS-a7eZHn-A2XicM-WUGdf2-ci9snY-rNL3n-q1Apmb-6fk48G-bA3K5y-a8DQ7p-nGML8g-bBTtEZ-a7eUa2-9kMepF-viGTX-ceEkVG-XgFVDX-rTXdA-yHWJW-e3n4j6-RNs212-op9u2-asy2m5-5EgGBB-8ySZsK-9ZHpEM-dcp2Gk-BQKnJ7-74PuWV"
monkfish.save

IngredientSeason.create(
  county: sussex,
  ingredient: monkfish
  start: Date.new(2019,03,01)
  end: Date.new(2019,05,31)
  )
#red mullet
red_mullet = Ingredient.new(
  food_group: fish,
  name: "Red Mullet",
  binomial: "Mullus barbatus"
  description: "Unrelated to the grey mullet, this fish was a prized pet in ancient times. The Romans kept red mullet in ponds, where they would be trained to come and feed at the ringing of a bell or a call from their keeper. These fish were so coveted that they frequently sold for their weight in silver."
  )
red_mullet.remote_thumbnail_picture_url = "https://693715.smushcdn.com/1216652/wp-content/uploads/2019/02/Red-mullet-freshly-caught.jpg?lossy=1&strip=1&webp=1"
red_mullet.remote_background_picture_url = "https://www.flickr.com/photos/31978157@N06/7964530164/in/photolist-jFD7wk-bMDtxr-6Dmckm-SiuLfA-fbLXoD-7nqEo6-dTZjfV-7jeD8-5afzY6-qtHuY7-5yhmv6-4bbwUa-7afNfP-Dddzi-4YXa2U-5dYGDu-4rzv98-aaCcJ-65vi67-qceTpY-5dYBLw-a7PsNK-dkM6Sp-nPie6W-4N3Cgz-8iKuPS-Dov43B-qceDgu-aEZoGd-4GooJd-d8NikA-dKcKfN-qtHwaq-9DdEq4-qtAG5P-UoPKXD-2e6jgv9-TVghgV-8vvMpd-8DL16-oJ5MvN-4N3CaH-qcmKXD-795mXS-qrweVj-5B53Vc-bkeSeP-29Dg2sd-px2HrZ-6K59VL"
red_mullet.save

IngredientSeason.create(
  county: sussex,
  ingredient: red_mullet
  start: Date.new(2019,06,01)
  end: Date.new(2019,08,31)
  )
#10 x vegetables

# 10 x meat - pheasants, venison, beef, pigeon, rabbit, lamb,

# 10 x fruit



# 10 x fishmongers

# 20 x farmshops

# local meat
