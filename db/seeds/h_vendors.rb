sussex = County.find_by_name("Sussex")

cowdray = Vendor.new(
  county: sussex,
  name: "Cowdray Farm Shop",
  address: "Cowdray Park, A272, Midhurst GU29 0AJ, United Kingdom",
  longitude: -0.725903,
  latitude: 50.994654,
  price_range: 5,
  link: 'https://www.cowdray.co.uk/cowdray-farm-shop/'
  )

cowdray.remote_picture_url = "https://media-cdn.tripadvisor.com/media/photo-s/0f/c7/84/18/cowdray-farm-shop.jpg"
cowdray.save!

IngredientAtVendor.create(
  vendor: cowdray,
  ingredient: @pomegranate
  )

brighton = Vendor.new(
  county: sussex,
  name: "Florence Road Market",
  address: "Florence Rd, Brighton BN1 6DL, UK",
  longitude: -0.136948,
  latitude: 50.838180,
  price_range: 1,
  )

brighton.remote_picture_url = "https://lh5.googleusercontent.com/p/AF1QipO3ajxkPYIejUsMF-vro7T8xvqux1RHMKd8dMSj=w207-h160-k-no"
brighton.save!

IngredientAtVendor.create(
  vendor: brighton,
  ingredient: @pomegranate
  )

steyning = Vendor.new(
  county: sussex,
  name: "The Sussex Produce Company",
  address: "88 High St, Steyning BN44 3RD, UK",
  longitude: -0.329905,
  latitude: 50.889085,
  price_range: 4,
  )

steyning.remote_picture_url = "https://www.thesussexproducecompany.co.uk/uploads/resizes/front20of20shop2028129_c980x338.jpg"
steyning.save!

IngredientAtVendor.create(
  vendor: steyning,
  ingredient: @pomegranate
  )

bury = Vendor.new(
  county: sussex,
  name: "Charlie's Farm Shop",
  address: "Southview Farm, Bury, Pulborough RH20 1NP, United Kingdom",
  longitude: -0.563764,
  latitude: 50.915565,
  price_range: 4,
  )

bury.remote_picture_url = "https://www.thornesfarmshop.co.uk/wp-content/uploads/2015/05/2.jpg"
bury.save!

IngredientAtVendor.create(
  vendor: bury,
  ingredient: @pomegranate
  )
