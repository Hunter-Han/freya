# 10 x fruit
sussex = County.find_by_name("Sussex")
# strawberries

strawberry = Ingredient.new(
  food_group: @fruit,
  name: "Strawberries",
  binomial: "Fragaria × ananassa",
  description: "Once available in Britain for just a brief period during the summer, strawberries are now a year-round fruit, thanks to imports from warmer climates. However, the varieties grown for export tend to be chosen for their ability to withstand transportation, rather than for their texture or flavour, which often results in a less tender berry with an unremarkable taste. The fact that strawberries intended for export are picked before they're properly ripe, means that their flavour is further impaired; strawberries don't ripen after being picked. To enjoy strawberries at their fragrant, juicy and flavourful best it's worth holding out for the British season - if you want to eat them super-ripe, pick-your-own is best. Choose plump, shiny, tender berries, with a good, bright colour and a sweet aroma, preferably with their leafy green calyx and stalk still attached. Avoid mushy or mouldy berries. If you're buying a punnet, check that the underside isn't stained - that means the lower level of berries has been crushed. Large strawberries tend to have a higher water content, so are less flavourful - go for small to medium-sized ones. Elsanta is one of the most common strawberries available - it is sweet, but has a high water content, giving it a crisp texture. For flavour, sweetness and a softer texture, look for other British varieties, such as Ava, Florence, Alice and Rhapsody."
  )
strawberry.remote_thumbnail_picture_url = "https://images.unsplash.com/photo-1527777309916-b59323b01809?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
strawberry.remote_background_picture_url = "https://images.unsplash.com/photo-1500651230702-0e2d8a49d4ad?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80"
strawberry.save

IngredientSeason.create(
  county: sussex,
  ingredient: strawberry,
  start: Date.new(2019,5,20),
  end:Date.new(2019,9,5)
)
#cherries
cherry = Ingredient.new(
  food_group: @fruit,
  name: "Cherries",
  binomial: "Prunus avium",
  description: "One of the delights of the summer, cherries are much loved for their succulent texture, flavour and gorgeous good looks. The juicy flesh can be sweet or sour, depending on which of the hundreds of varieties they are. Cherries are divided into three groups: sweet, sour and hybrids. Choose plump, shiny cherries that have their stalks attached and look for fruit that is dark red, firm but not hard. Generally, pale cherries are sweet and dark cherries more acidic. It is always a good idea to try before you buy to get the flavour that you prefer."
  )
cherry.remote_thumbnail_picture_url = "https://images.unsplash.com/photo-1530176611600-d05a6387d07c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
cherry.remote_background_picture_url = "https://images.unsplash.com/photo-1435910083655-98a18caf9b3a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
cherry.save

IngredientSeason.create(
  county: sussex,
  ingredient: cherry,
  start: Date.new(2019,7,1),
  end:Date.new(2019,7,31)
)
#gooseberries
gooseberry = Ingredient.new(
  food_group: @fruit,
  name: "Gooseberries",
  binomial: "Ribes uva-crispa",
  description: "The size of large grapes, but with a more spherical shape, gooseberries are related to the blackcurrant, and have been a popular British fruit since as far back as Elizabethan times. Early in the season they are bright green, with a veined effect on the skin, and quite hard and tart - they are best for cooking with, in particular to make the classic English pudding, gooseberry fool. Later on, softer, sweeter varieties become available, often yellow or red coloured - they are good eaten raw. Some varieties have sparse, thin hairs. Choose slightly underripe - but not rock-hard - berries if you're going to cook with them. For eating raw, choose berries that yield to the touch, and are juicy. If you can try before you buy, so much the better)."
  )
gooseberry.remote_thumbnail_picture_url = "https://live.staticflickr.com/4038/4675922485_abae247ac2_b.jpg"
gooseberry.remote_background_picture_url = "https://live.staticflickr.com/63/201364337_ae1ac65a56_o.jpg"
gooseberry.save

IngredientSeason.create(
  county: sussex,
  ingredient: gooseberry,
  start: Date.new(2019,6,1),
  end:Date.new(2019,8,10)
)
#quinces
quince = Ingredient.new(
  food_group: @fruit,
  name: "Quinces",
  binomial: "Cydonia oblonga",
  description: "The two different shapes - apple and pear in which quinces grow are an obvious clue to the fruits to which they are related. When ripe, they are very fragrant, with a smooth, golden yellow skin, but their hard, bitter flesh means that they are used almost exclusively for cooking, rather than eating raw. Once cooked, the flesh develops a deeper flavour and turns a golden pink. They contain a high level of pectin, which makes them great for making jellies, jams and other preserves, such as the Spanish quince paste, membrillo, which is often served with cheese. They are also good in chutneys, pies and tarts. Choose firm, unblemished fruit. Avoid quinces with downy skin - it's a sign they're unripe."
  )
quince.remote_thumbnail_picture_url = "https://live.staticflickr.com/8459/8059955150_5baa6054ba_o.jpg"
quince.remote_background_picture_url = "https://live.staticflickr.com/4128/5023291589_5cb25e1c87_o.jpg"
quince.save

IngredientSeason.create(
  county: sussex,
  ingredient: quince,
  start: Date.new(2019,10,1),
  end:Date.new(2019,12,31)
)
#apples
apple = Ingredient.new(
  food_group: @fruit,
  name: "Apples",
  binomial: "Malus domestica",
  description: "Grown in temperate regions, apples are one of the most widely cultivated tree fruits. There are over 7,000 varieties in existence, many of which are grown in Britain but, despite that, only around 12 varieties are commonly sold in UK supermarkets, of which many are imported. Colours range from red, to yellow and green, but all varieties fall into one of two categories: eating, also sometimes called dessert apples (including Cox's Orange Pippin, Golden Delicious, Granny Smiths, Braeburn, Gala, Pink Lady and Jonagold) or cooking, with the latter being more tart in flavour, a result of their higher levels of malic acid (the best is Bramley, though Blenheim Orange, Grenadier, Reverend W Wilkes and Ida Red are also available). The texture can be very crisp and juicy or more yielding, according to variety. Choose firm fruit, with no blemishes, bruising or wrinkles. Don't be fooled by a very shiny skin - many apples are waxed to make them look good. And don't discard an apple with dry brown patches ('scald') - it's just the result of overexposure to sunlight and won't affect the quality."
  )
apple.remote_thumbnail_picture_url = "https://images.unsplash.com/photo-1549301014-95d119f5c960?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
apple.remote_background_picture_url = "https://images.unsplash.com/photo-1541600708691-a6e4123f8baa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
apple.save

IngredientSeason.create(
  county: sussex,
  ingredient: apple,
  start: Date.new(2019,11,1),
  end:Date.new(2019,11,30)
)
#tomato
tomato = Ingredient.new(
  food_group: @fruit,
  name: "Tomatoes",
  binomial: "Solanum lycopersicum",
  description: "A member of the nightshade family (along with aubergines, peppers and chillies), tomatoes are in fact a fruit, but their affinity for other savoury ingredients means that they are usually classed as a vegetable. Tomatoes originated in western South America, crossed the Atlantic to Spain with the conquistadors in the 16th century, but only finally caught on in northern Europe in the 19th century. Today they're one of the most important ingredients available, and are especially indispensible in Mediterranean cookery. The skin, flesh and seeds can all be eaten, but the green leaves are toxic, so should always be discarded. The number of varieties run into the thousands, and they vary in size from the huge beefsteak to tiny cherry tomatoes, but most have a sweet, gently tangy flavour and are good both raw and cooked. Choose firm tomatoes with wrinkle-free skins and a noticeable tomato smell. Tomatoes have the best, sweetest flavour if they've been allowed to ripen on the vine before they've been picked but, if you buy underripe tomatoes, you can redden them by keeping them in a brown paper bag at room temperature, or on a windowsill. The sooner you eat a ripe tomato after it's been picked, the better it will taste, so try to seek out locally grown tomatoes if possible. The leafy tops are a good sign of freshness; they should be perky, rather than wilted. Avoid any tomatoes that show signs of mould."
  )
tomato.remote_thumbnail_picture_url = "https://images.unsplash.com/photo-1518977822534-7049a61ee0c2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
tomato.remote_background_picture_url = "https://images.unsplash.com/photo-1471194402529-8e0f5a675de6?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80"
tomato.save

IngredientSeason.create(
  county: sussex,
  ingredient: tomato,
  start: Date.new(2019,6,1),
  end:Date.new(2019,10,14)
)
#pears
pear = Ingredient.new(
  food_group: @fruit,
  name: "Pears",
  binomial: "Pyrus",
  description: "Like apples, to which they are related, pears come in thousands of varieties, of which only a small fraction are sold in the UK. Their fine, slightly granular flesh is much more fragile than apples and, unlike most fruit, they improve in flavour and texture after they're picked. Most pears are wider at the bottom than they are at the top, though a few varieties are more spherical in shape. They're not as brightly coloured as apples, most having skins that range from dull bronze through to soft green, though you can also find red varieties such as Red William. Choose slightly underripe pears (they should be firm but not hard), then ripen them at home - pears are very delicate and bruise easily when ripe. They ripen from the inside out - when they're ready they should give a little at the base. Avoid any pears that are mushy or bruised."
  )
pear.remote_thumbnail_picture_url = "https://images.unsplash.com/photo-1514756331096-242fdeb70d4a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
pear.remote_background_picture_url = "https://images.unsplash.com/photo-1471194395574-d150d0e0a97f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80"
pear.save

IngredientSeason.create(
  county: sussex,
  ingredient: pear,
  start: Date.new(2019,9,1),
  end:Date.new(2020,1,31)
)
#blueberries
blueberry = Ingredient.new(
  food_group: @fruit,
  name: "Blueberries",
  binomial: "Cyanococcus",
  description: "Blueberries are one of the few edibles native to North America and credited with being particularly high in antioxidants. They're now grown very widely internationally but the ever-increasing number of varieties marketed means there's no reliable guide to flavour, sweetness or texture. They're credited with many different health benefits if a handful or so is eaten every day, but this is only true if eaten raw. Cooked blueberries lose a great deal of nutrition and most also forfeit flavour; only small, sharp wild blueberries picked directly in Maine are likely to retain flavour when cooked, such as in a blueberry muffin – others more often become a purple tasteless mush. Choose - there's no immediate clue to flavour based on colour, size, variety or country of origin; thus, it’s worth remembering the variety noted on the label when you find one you like. Check for firmness of the berries and look for any obvious softness or broken skins, which will indicate they're not in top condition."
  )
blueberry.remote_thumbnail_picture_url = "https://images.unsplash.com/photo-1425934398893-310a009a77f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80"
blueberry.remote_background_picture_url = "https://images.unsplash.com/photo-1460400408855-36abd76648b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
blueberry.save

IngredientSeason.create(
  county: sussex,
  ingredient: blueberry,
  start: Date.new(2019,7,1),
  end:Date.new(2019,7,31)
)
#plums
plum = Ingredient.new(
  food_group: @fruit,
  name: "Plums",
  binomial: "Prunus domestica",
  description: "The juiciest fruit in the stone fruit family, plums come in many different varieties, some sweet, some slightly more tart. All plums however have certain characteristics in common, with smooth, richly coloured skins and a hard central stone. Plums vary in hue from deep purple to red, yellow and green. The cloudy bloom on their skin is natural and isn't an indication of poor quality. All sweet dessert plums can be used for cooking, too. Choose smooth, unbruised skin with a chalky bloom, and firm flesh that gives a little when it's gently squeezed. If they feel soft in the point where the dimple meets the stem, they're overrripe. Avoid split, brown or shrivelled examples."
  )
plum.remote_thumbnail_picture_url = "https://images.unsplash.com/photo-1560287820-f71eda3d75c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
plum.remote_background_picture_url = "https://images.unsplash.com/photo-1539638765048-ba362f6ed57b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
plum.save

IngredientSeason.create(
  county: sussex,
  ingredient: plum,
  start: Date.new(2019,8,15),
  end:Date.new(2019,10,31)
)
#apricots
apricot = Ingredient.new(
  food_group: @fruit,
  name: "Apricots",
  binomial: "Prunus armeniaca",
  description: "A relative of the peach, nectarine, plum and cherry, apricots are fragrant, with a soft, velvety skin that ranges from pale yellow to deep orange. Inside there's a large kernel that will fall out easily if the flesh is ripe. Apricots need a warm climate to thrive - in the summer most come from hot European countries, and there's also a short winter season for apricots grown in Chile and South Africa. Choose apricots whose flesh is moderately firm with some give. An apricot's colour is not always a reliable guide to flavour, but steer clear of very pale varieties, and always avoid wrinkled or blemished skins."
  )
apricot.remote_thumbnail_picture_url = "https://images.unsplash.com/photo-1473439891350-82f82b022d6d?ixlib=rb-1.2.1&auto=format&fit=crop&w=2689&q=80"
apricot.remote_background_picture_url = "https://live.staticflickr.com/704/33048288261_874751764a_o.jpg"
apricot.save

IngredientSeason.create(
  county: sussex,
  ingredient: apricot,
  start: Date.new(2019,5,1),
  end:Date.new(2019,8,31)
)
