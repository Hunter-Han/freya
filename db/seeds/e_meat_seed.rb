#fallow venison
sussex = County.find_by_name("Sussex")

fallow_venison = Ingredient.new(
  food_group: @meat,
  name: "Fallow Venison",
  binomial: "Dama dama",
  description: "Venison is the generic term for meat from deer and there are six species of deer in this country, all producing venison with distinctive eating qualities. Like all our game, our venison comes from wild animals which have never been to an abattoir. Four species are regularly available in our area - red, fallow, roe and muntjac - but the most common are fallow and muntjac."
  )
fallow_venison.remote_thumbnail_picture_url = "https://cdn.shopify.com/s/files/1/0391/7709/products/Venison-steaks_web_1024x1024.jpg?v=1494002369"
fallow_venison.remote_background_picture_url = "https://live.staticflickr.com/352/33012292675_ab1cc28f0f_h.jpg"
fallow_venison.save

IngredientSeason.create(
  county: sussex,
  ingredient: fallow_venison,
  start: Date.new(2019,8,1),
  end:Date.new(2020,4,30)
)

#roe venison
roe_venison = Ingredient.new(
  food_group: @meat,
  name: "Roe venison",
  binomial: "Capreolus capreolus",
  description: "Venison is the generic term for meat from deer and there are six species of deer in this country, all producing venison with distinctive eating qualities. Like all our game, our venison comes from wild animals which have never been to an abattoir. Four species are regularly available in our area - red, fallow, roe and muntjac - but the most common are fallow and muntjac."
  )
roe_venison.remote_thumbnail_picture_url = "https://cdn.shopify.com/s/files/1/0391/7709/products/Venison_haunch_steak_1024x1024.jpg?v=1494002369"
roe_venison.remote_background_picture_url = "https://live.staticflickr.com/4383/36628619346_c5f2176ffa_o.jpg"
roe_venison.save

IngredientSeason.create(
  county: sussex,
  ingredient: roe_venison,
  start: Date.new(2019,1,1),
  end:Date.new(2019,12,31)
)
#pheasant
pheasant = Ingredient.new(
  food_group: @meat,
  name: "Pheasant",
  binomial: "Phasianus colchicus",
  description: "Pheasants are commonly found in the British countryside. The wild population is supported by the release into the wild of reared pheasants in July and August, boosting the overall availability of pheasants when the pheasant shooting season starts in October. It is therefore hard to determine whether pheasants are truly wild or not as it is impossible to distinguish between a pheasant born in the wild or one born on a farm. They all look and behave like wild birds during the shooting season."
  )
pheasant.remote_thumbnail_picture_url = "https://cdn.shopify.com/s/files/1/0391/7709/products/Pheasant_1024x1024.jpg?v=1494002362"
pheasant.remote_background_picture_url = "https://images.unsplash.com/photo-1531351761167-c1a0f1356c7c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
pheasant.save

IngredientSeason.create(
  county: sussex,
  ingredient: pheasant,
  start: Date.new(2019,10,1),
  end:Date.new(2020,2,1)
)
#partridge
partridge = Ingredient.new(
  food_group: @meat,
  name: "Partridge",
  binomial: "Perdix perdix",
  description: "There are two kinds of partridges. The Red Legged or French Partridge is the most commonly found bird in the UK and is referred to here as just partridge. The English or grey partridge is less common and is only occasionally available. Most people rate the native English partridge higher for texture. Both birds have a subtle taste and are a good introduction for those people trying game for the first time."
  )
partridge.remote_thumbnail_picture_url = "https://cdn.shopify.com/s/files/1/0391/7709/products/Wild_Meat_Company156.jpgEnglish_partridge_1024x1024.jpg?v=1413532233"
partridge.remote_background_picture_url = "https://live.staticflickr.com/7913/32427767577_321d4b1946_o.jpg"
partridge.save

IngredientSeason.create(
  county: sussex,
  ingredient: partridge,
  start: Date.new(2019,9,1),
  end:Date.new(2020,2,1)
)
#grouse
grouse = Ingredient.new(
  food_group: @meat,
  name: "Red grouse",
  binomial: "Lagapus lagapus scotticus",
  description: "Whilst not native to Sussex, grouse are the king of gamebirds. They have a very strong and distinctive flavour and accordingly are greatly in demand. Their diet is restricted to the heather on the moorlands in northern Britain where they live, and this is why their flavour is 'heathery'! They are the earliest game bird to come into season on 12 August but their season also finishes early on the 10 December when the moors are generally snow covered. During the beginning of the season birds born that year, called ‘young’ grouse, are particularly tender and are best plain roasted. During the beginning of the season birds born that year, called ‘young’ grouse, are particularly tender and are best plain roasted."
  )
grouse.remote_thumbnail_picture_url = "https://cdn.shopify.com/s/files/1/0391/7709/products/Wild_Meat_Company241_grouse_web_1024x1024.jpg?v=1494002337"
grouse.remote_background_picture_url = "https://live.staticflickr.com/4416/37200966412_3c15df23c1_o.jpg"
grouse.save

IngredientSeason.create(
  county: sussex,
  ingredient: grouse,
  start: Date.new(2019,8,12),
  end:Date.new(2019,12,10)
)
#lamb
lamb = Ingredient.new(
  food_group: @meat,
  name: "Lamb",
  binomial: "Ovis aries",
  description: "A lamb is a sheep that is under 1 year old; between 1 and 2 years old you will find it sold as 'hogget' - which has a stronger flavour and slightly less tender flesh; anything over 2 years old is called mutton, which has a lot more flavour - but also a tougher flesh that will need slow-cooking to tenderise it. The older a lamb, the deeper the colour of the meat, though the time it has been hung for and the breed that it comes from will also make a difference."
  )
lamb.remote_thumbnail_picture_url = "https://www.mayfairfarmnh.com/wp-content/uploads/Raw-rack-of-lamb-Mayfair.jpg"
lamb.remote_background_picture_url = "https://images.unsplash.com/photo-1476725376606-78bd56004997?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2730&q=80"
lamb.save

IngredientSeason.create(
  county: sussex,
  ingredient: lamb,
  start: Date.new(2019,1,1),
  end:Date.new(2019,12,31)
)
#beef
beef = Ingredient.new(
  food_group: @meat,
  name: "Beef",
  binomial: "Bos taurus",
  description: "The classic cut of meat for a British Sunday roast, beef is full of flavour, as well as being a good source of high-quality protein, iron and B vitamins. But it's not just a one-dish ingredient - the wide range of cuts available, from expensive sirloin steak to the much more affordable brisket, mean it's pretty versatile. British-reared breeds, such as Aberdeen Angus, Longhorn and Hereford have traditionally been considered to be among the best beef in the world, but the reputation of other premium breeds such as Wagyu, which originated in Japan, are increasingly on the rise. Most beef cuts are sold ready-prepared, so it's generally a fairly easy meat to cook. Always buy beef from a source that you trust - a good supermarket, local butcher, farmers' market or shop, or a website mail order company. Of those five sources, the last four will usually be able to tell you the most about the meat - where it comes from, how it was reared and slaughtered, as well as if it was hung, and for how long. Traceability like that is crucial in ensuring that the beef you are buying has been humanely treated while alive, had the shortest possible journey to the slaughterhouse (long journeys are highly stressful for all livestock) and has been expertly handled once killed - all of which will have an impact on the meat's flavour and tenderness. Organic beef, and beef from rare breeds, is the most expensive, as the highest farming standards will have been adhered to at all stages of the animal's life. The length of time for which beef has been hung will also determine how flavoursome and tender it is; 10-14 days is a good length, though some super-premium beef is hung for longer, up to six weeks."
  )
beef.remote_thumbnail_picture_url = "https://crowdcow-images.imgix.net/https%3A%2F%2Fcrowdcow-uploads.imgix.net%2Fpicture%2Fproduction%2Figdh70kpe%2Fribeye_edit.jpg?ixlib=rails-2.1.4&widths=%5B270%2C%20540%2C%20720%2C%20960%2C%201140%5D&w=1200&h=630&fit=crop&crop_type=focalpoint&fm=jpg&auto=compress%2C%20format&cs=srgb&q=40&s=ee0a2cc8cfda6ba7e236d625125c0056"
beef.remote_background_picture_url = "https://images.unsplash.com/photo-1563462336697-00383abf618d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1867&q=80"
beef.save

IngredientSeason.create(
  county: sussex,
  ingredient: beef,
  start: Date.new(2019,1,1),
  end:Date.new(2019,12,31)
)
#rabbit
rabbit = Ingredient.new(
  food_group: @meat,
  name: "Wild rabbit",
  binomial: "Oryctolagus cuniculus",
  description: "Rabbit is enjoying a renaissance with many celebrity chefs and restaurants putting it back on their menus although it remains undervalued. It was part of the staple diet for country people since Norman times. Rabbit is similar in appearance to chicken and has a firmer texture. The flavour can be enhanced by hanging or diluted by soaking the meat in salty water (or water with added vinegar) for two or three hours before cooking.  This process also ‘cleans’ the meat of any blood residue."
  )
rabbit.remote_thumbnail_picture_url = "https://cdn.shopify.com/s/files/1/0391/7709/products/Diced_1024x1024.jpg?v=1494002359"
rabbit.remote_background_picture_url = "https://images.unsplash.com/photo-1493687567197-33e6a6776eba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80"
rabbit.save

IngredientSeason.create(
  county: sussex,
  ingredient: rabbit,
  start: Date.new(2019,1,1),
  end:Date.new(2019,12,31)
)
#pigeon
pigeon = Ingredient.new(
  food_group: @meat,
  name: "Wood pigeon",
  binomial: "Columba palumbus",
  description: "They may be annoying in your vegetable garden but woodpigeons eat the finest food from our farms and gardens and so produce a delicious dark meat. The woodpigeon should not be confused with the town pigeon - which is a feral rock dove. Woodpigeons are predominantly birds of the countryside although they are common in town gardens and parks. Being a pest to farmers and gardeners, they are shot all year round so it is available fresh throughout the year."
  )
pigeon.remote_thumbnail_picture_url = "https://cdn.shopify.com/s/files/1/0391/7709/products/Wild_Meat_Company24_1024x1024.jpg?v=1494002357"
pigeon.remote_background_picture_url = "https://live.staticflickr.com/7361/11857162964_cc5c8045e3_o.jpg"
pigeon.save

IngredientSeason.create(
  county: sussex,
  ingredient: pigeon,
  start: Date.new(2019,1,1),
  end:Date.new(2019,12,31)
)
#wild duck
duck = Ingredient.new(
  food_group: @meat,
  name: "Wild duck",
  binomial: "Anas platyrhynchos",
  description: "Wild duck differ from farmed duck sold in the supermarket in that they are not fatty and have stronger flavours. The best known wild duck are mallard which can become quite tame when found on lakes and village ponds. As the largest of the wild ducks, mallard are the only species used by restaurants as two servings can be obtained from one duck. This is a shame as it means few people have a chance to taste the other types of wild duck, particularly teal which are delicious - if a little small!

"
  )
duck.remote_thumbnail_picture_url = "https://cdn.shopify.com/s/files/1/0391/7709/products/Wild_Meat_Company08_1024x1024.jpg?v=1494002361"
duck.remote_background_picture_url = "https://images.unsplash.com/photo-1549434643-613c4a9940ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80"
duck.save

IngredientSeason.create(
  county: sussex,
  ingredient: duck,
  start: Date.new(2019,9,1),
  end:Date.new(2020,2,20)
)
