#10 x vegetables
sussex = County.find_by_name("Sussex")
#asparagus - may, june
asparagus = Ingredient.new(
  food_group: @vegetable,
  name: "Asparagus",
  binomial: "Asparagus officinalis",
  description: "Labour-intensive to grow, asparagus are the young shoots of a cultivated lily plant. They're considered to be one of the delicacies of the vegetable world, with a price tag to match, and have a distinct, intense savoury flavour. Sprue is the term for young, very slender asparagus. While French asparagus is purple, the British and American varieties are green. In contrast, Spanish and much Dutch asparagus is white, as it's grown beneath the soil and cut just as the tips emerge. All types pack a nutritional punch, with high levels of vitamins A and C, potassium, iron and calcium, and they're also diuretic, giving urine an unmistakable aroma (which, curiously, not everyone can smell!). Choose the best by looking for asparagus where the tips are tightly furled and perky, rather than limp, and the shoots should be straight and firm."
  )
asparagus.remote_thumbnail_picture_url = "https://live.staticflickr.com/905/41942260882_a0c9fe0f84_c.jpg"
asparagus.remote_background_picture_url = "https://images.unsplash.com/photo-1553565592-01aa6682bed7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
asparagus.save

IngredientSeason.create(
  county: sussex,
  ingredient: @asparagus,
  start:Date.new(2019,5,1),
  end:Date.new(2019,6,30)
  )
#brussels sprouts
brussel_sprout = Ingredient.new(
  food_group: @vegetable,
  name: "Brussel Sprouts",
  binomial: "Brassica oleracea var. gemmifera",
  description: "The quintessential Christmas dinner veg, Brussels sprouts are throught to have been cultivated in Belgium in the 16th century - hence the name. Although they're related to cabbage - they even look like a miniature, compact version - they have a sweet, nutty flavour, which some people can find bitter. They grow in multiple rows along a thick, central stalk. Choose brussel sprouts with plump, bright green heads (the smaller, the sweeter) with tightly packed leaves. If you can buy them still attached to their long central stalk, so much the better - they'll keep fresh for longer that way."
  )
brussel_sprout.remote_thumbnail_picture_url = "https://live.staticflickr.com/3559/3412888310_0d180e4255_o.jpg"
brussel_sprout.remote_background_picture_url = "https://images.unsplash.com/photo-1438118907704-7718ee9a191a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
brussel_sprout.save

IngredientSeason.create(
  county: sussex,
  ingredient: brussel_sprout,
  start: Date.new(2019,10,1),
  end:Date.new(2012,2,28)
  )

#artichokes - march, april, may
artichoke = Ingredient.new(
  food_group: @vegetable,
  name: "Artichoke",
  binomial: "Cynara scolymus",
  description: "The artichoke is actually the bud of a thistle—a flower. The leaves (called “bracts”) cover a fuzzy center called the “choke”, which sits on top of a meaty core, called the “heart”. The heart is completely edible (and amazingly delicious). The fuzzy choke is too fibrous to eat in regular artichokes, but edible in baby artichokes. All but the innermost leaves are tough and you have to scrape them with your teeth to eat the tender parts. Choose artichokes that feel heavy when you pick them up. If they feel light, they’re probably a bit dried out and not as meaty as they should be. If you squeeze the artichoke, the leaves should “squeak”. This is another way you can tell the artichoke is fresh. The leaves should be closed with just a little separation, not flayed wide open. Remember an artichoke is a flower bud, as it ages, the leaves open up. So an artichoke with wide open leaves may be on the old side.If an artichoke looks like it has been burned by frost, no worries. In fact, these less-than-beautiful artichokes can taste even better than those not touched by frost and often command a premium price because of it."
  )
artichoke.remote_thumbnail_picture_url = "https://unsplash.com/photos/GQ62pYNohW0"
artichoke.remote_background_picture_url = "https://images.unsplash.com/photo-1557840704-759ba2741139?ixlib=rb-1.2.1&auto=format&fit=crop&w=1867&q=80"
artichoke.save

IngredientSeason.create(
  county: sussex,
  ingredient: artichoke,
  start: Date.new(2019,3,1),
  end:Date.new(2019,5,31)
)

#brussels sprouts - september/october/november/december/january/february
kale = Ingredient.new(
  food_group: @vegetable,
  name: "Kale",
  binomial: "Brassica oleracea var. sabellica",
  description: "A member of the cabbage family, kale comes in two forms: kale, which has smooth leaves, and curly kale, which has crinkly leaves. Curly kale is the most common of the two. Instead of forming a head, the leaves grow in a loose rosette at the top of a stem. The leaves are green, sometimes tinged with blue or purple, and their flavour is strong and distinct. Choose heads of kale on the smaller side, as they will be more tender. The leaves should be crisp, with a bright colour."
  )
kale.remote_thumbnail_picture_url = "https://images.unsplash.com/photo-1550083656-0c3d8ad00e71?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80"
kale.remote_background_picture_url = "https://images.unsplash.com/photo-1534942240902-fc71ff3dfaee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
kale.save

IngredientSeason.create(
  county: sussex,
  ingredient: kale,
  start: Date.new(2019,9,15),
  end:Date.new(2020,2,28)
)
#rhubarb - march/april/may/june
rhubarb = Ingredient.new(
  food_group: @vegetable,
  name: "Rhubarb",
  binomial: "Rheum rhabarbarum",
  description: "Botanically, rhubarb is a vegetable (it's related to sorrel and dock) but its thick, fleshy stalks are treated as a fruit, despite their tart flavour. Rhubarb grows in two crops. The first, which arrives early in the year, is forced, grown under pots, particularly in what's known as the 'rhubarb triangle' around Leeds, Wakefield and Bradford. Its stalks are watermelon pink, with pale lime green leaves, and it is the more tender and delicately flavoured of the two. The second, called maincrop rhubarb, is grown outdoors, and arrives in spring. Its stalks are a deeper red, tinged with green, and its leaves a brighter green. It has a more intense flavour and a more robust texture than forced. All rhubarb is too tart to be eaten raw, so should be cooked with plenty of sugar. It goes well with both ginger and strawberries. Choose firm, crisp, plump stalks and perky leaves with good colour."
  )
rhubarb.remote_thumbnail_picture_url = "https://images.unsplash.com/photo-1558373235-cabfa82b2337?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=993&q=80"
rhubarb.remote_background_picture_url = "https://images.unsplash.com/photo-1507484467459-0c01be16726e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80"
rhubarb.save

IngredientSeason.create(
  county: sussex,
  ingredient: rhubarb,
  start: Date.new(2019,3,1),
  end:Date.new(2019,6,30)
)
#new potatoes - april, may, june, july
new_potato = Ingredient.new(
  food_group: @vegetable,
  name: "New Potatoes",
  binomial: "Solanum tuberosum",
  description: "New potatoes have thin, wispy skins and a crisp, waxy texture. They are young potatoes and unlike their fully grown counterparts, they keep their shape once cooked and cut. They are also sweeter because their sugar has not yet converted into starch, and are therefore particularly suited to salads. Jersey Royals are the best known variety, and their appearance in late April heralds the beginning of the summer. Other varieties include Pentland Javelin and salad potatoes, which are best eaten cold. Choose new potatoes that are firm, dry and blemish-free. Choose unwashed potatoes - they last longer as the dirt protects them from bruising and general deterioration."
  )
new_potato.remote_thumbnail_picture_url = "https://images.unsplash.com/photo-1508313880080-c4bef0730395?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80"
new_potato.remote_background_picture_url = "https://live.staticflickr.com/7902/47478714031_29fd25132d_o.jpg"
new_potato.save

IngredientSeason.create(
  county: sussex,
  ingredient: new_potato,
  start: Date.new(2019,4,1),
  end:Date.new(2019,7,15)
)
#courgettes - june, july, august, september, october
courgette = Ingredient.new(
  food_group: @vegetable,
  name: "Courgette",
  binomial: "Cucurbita pepo",
  description: "The courgette is a variety of cucurtbit, which means it's from the same family as cucumber, squash and melon. It is the most popular vegetable of the squash family, being extremely versatile, tender and easy to cook. Just don't boil them! They have a deep green skin with firm pale flesh and are also known as zucchini. Choose small courgettes that are firm to touch with a glossy, unblemished skin. Avoid soft, squishy courgettes."
  )
courgette.remote_thumbnail_picture_url = "https://live.staticflickr.com/3158/5821527002_7b845aeacc_b.jpg"
courgette.remote_background_picture_url = "https://live.staticflickr.com/4309/35370749764_ee8ffc6daa_h.jpg"
courgette.save

IngredientSeason.create(
  county: sussex,
  ingredient: courgette,
  start: Date.new(2019,6,1),
  end:Date.new(2019,10,31)
)
#winter squash - october, november, december
winter_squash = Ingredient.new(
  food_group: @vegetable,
  name: "Winter Squash",
  binomial: "Cucurbita",
  description: "Pumpkins may get all the glory at Halloween, but there are many other versatile, vividly colored, flavorful, and nutrient-packed winter squash varieties to brighten up cold-weather meals. Sweeter, denser, and more firm in texture than summer squash or zucchini, autumn and winter squash take well to a wide spectrum of seasonings and can be true crowd-pleasers in warming soups, casseroles, risotto, lasagna, and even desserts."
  )
winter_squash.remote_thumbnail_picture_url = "https://live.staticflickr.com/2636/3939743768_8baff98bf3_o.jpg"
winter_squash.remote_background_picture_url = "https://images.unsplash.com/photo-1536713498860-c449aa1c0fae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1943&q=80"
winter_squash.save

IngredientSeason.create(
  county: sussex,
  ingredient: winter_squash,
  start: Date.new(2019,10,1),
  end:Date.new(2019,12,31)
  )

#sweetcorn - september, october, november
sweetcorn = Ingredient.new(
  food_group: @vegetable,
  name: "Sweetcorn",
  binomial: "Zea mays",
  description: "Also known as corn on the cob, sweetcorn is composed of rows of tightly packed golden yellow kernels, growing along a tough central core. When ripe, the kernels are sweet and juicy, and are best cooked simply, with a little butter. Like peas, the natural sugars in the kernels turn to starch quite quickly, which makes the kernels tougher and less sweet, so it should be eaten as fresh as possible. Choose sweetcorn still in its husk - it keeps fresher for longer. Look for kernels that are tightly packed, plump, shiny and golden yellow, and smaller at the tip than they are in the middle (this indicates a young cob). The husks should be green, unblemished and fit snugly. When sweetcorn is really fresh, the kernels will release a milky liquid when cut. You can also buy baby sweetcorn. It is sweet but quite bland, and eaten mainly for its crisp texture."
  )
sweetcorn.remote_thumbnail_picture_url = "https://images.unsplash.com/photo-1559631526-5716df3cfacd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80"
sweetcorn.remote_background_picture_url = "https://images.unsplash.com/photo-1471199855351-450fa931304c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80"
sweetcorn.save

IngredientSeason.create(
  county: sussex,
  ingredient: sweetcorn,
  start: Date.new(2019,8,15),
  end:Date.new(2019,9,15)
  )

#spinach - april/may and september/october
spinach = Ingredient.new(
  food_group: @vegetable,
  name: "Spinach",
  binomial: "Spinacia oleracea",
  description: "Used in almost every cuisine across the world, spinach is an enormously popular green vegetable. The leaves can be either flat or slightly ruffled, and are a bright green when young, deepening to a more intense colour when older. The bitter flavour is distinctive - you either love it or hate it - and particularly complements dairy products and eggs. The milder, young leaves can be eaten raw in a salad, while the older ones are usually cooked (spinach has one of the shortest cooking times of all vegetables). It reduces very dramatically during cooking; a 450g bag will be just enough for two people. Choose spinach with bright green leaves, tender but crisp stems and a fresh smell. Avoid any that is yellowing or wilting."
  )
spinach.remote_thumbnail_picture_url = "https://live.staticflickr.com/3314/4616933583_241a0f0898_o.jpg"
spinach.remote_background_picture_url = "https://images.unsplash.com/photo-1565489348099-73ff648c76ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
spinach.save

IngredientSeason.create(
  county: sussex,
  ingredient: spinach,
  start: Date.new(2019,4,01),
  end:Date.new(2019,5,31)
  )
IngredientSeason.create(
  county: sussex,
  ingredient: spinach,
  start: Date.new(2019,9,1),
  end:Date.new(2019,10,31)
  )
