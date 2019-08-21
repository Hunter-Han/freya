counties_array = %w[Bedfordshire Berkshire Buckinghamshire Cambridgeshire Cheshire
  Cornwall Cumberland Derbyshire Devon Dorset County Durham Essex Gloucestershire
  Hampshire Herefordshire Hertfordshire Huntingdonshire Kent Lancashire Leicestershire
  Lincolnshire Middlesex Norfolk Northamptonshire Northumberland Nottinghamshire
  Oxfordshire Rutland Shropshire Somerset Staffordshire Suffolk Surrey Sussex
  Warwickshire Westmorland Wiltshire Worcestershire Yorkshire]

counties_array.each do |county|
  County.create!(name: county)
end
