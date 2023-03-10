
require 'open-uri'

puts "destoying carts_items"
CartItem.destroy_all
puts "carts_items destroyed"

puts "destoying carts"
Cart.destroy_all
puts "carts destroyed"

puts "destoying preset_items"
PresetItem.destroy_all
puts "preset_items destroyed"

puts "destoying users"
User.destroy_all
puts "users destroyed"

puts "destoying presets"
Preset.destroy_all
puts "presets destroyed"

puts "destoying items"
Item.destroy_all
puts "items destroyed"


puts "starting to seed"
puts "creating demo user"

dave = User.create!({
  first_name: "John",
  last_name: "Doe",
  email: "john@gmail.com",
  password: "123456"
})
puts "created user John Doe, email: john@gmail.com password: 123456"
puts "attaching John's avatar"
dave.avatar.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678248781/team-1_vmn52o.jpg')), filename: 'John_Doe.png', content_type: 'image/png')
puts "attached John's avatar"








puts "creating preset"
modern_bedroom = Preset.create({
  style: "Modern",
  room: "Bedroom"
})
puts "modern bedroom preset created"
puts "attaching modern bedroom photo"
modern_bedroom.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678249532/BedRoom_main_sa7etc.jpg')), filename: 'modern_bedroom.png', content_type: 'image/png')
puts "modern bedroom photo attached"












puts "creating items for the modern bedroom"
modern_bed = Item.create({
  name: "Modern Bed",
  price: 300,
  description: "20 x 40 x 120"
})
modern_bed.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678250023/Bed_BedRoom_lqyftq.jpg')), filename: 'modern_bed.png', content_type: 'image/png')
puts "created modern bed"

modern_nightstand = Item.create({
  name: "Modern nightstand",
  price: 220,
  description: "20 x 40 x 120"
})
modern_nightstand.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678250023/Nightstand_BedRoom_mtme3k.jpg')), filename: 'modern_nightstand.png', content_type: 'image/png')
puts "created modern nightstand"

modern_floor = Item.create({
  name: "Modern floor",
  price: 30,
  description: "20 x 40 x 120"
})
modern_floor.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678250022/Floor_BedRoom_kuwvrx.jpg')), filename: 'modern_floor.png', content_type: 'image/png')
puts "created modern floor"

modern_dresser = Item.create({
  name: "Modern dresser",
  price: 450,
  description: "20 x 40 x 120"
})
modern_dresser.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678250020/Tall_Dresser__BedRoom_y7yviq.jpg')), filename: 'modern_dresser.png', content_type: 'image/png')
puts "created modern dresser"

modern_lamp = Item.create({
  name: "Modern lamp",
  price: 50,
  description: "20 x 40 x 120"
})
modern_lamp.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678250021/Lamp-stone_BedRoom_s_ly2ltw.jpg')), filename: 'modern_lamp.png', content_type: 'image/png')
puts "created modern lamp"

white_paint = Item.create({
  name: "White paint",
  price: 50,
  description: "20 x 40 x 120"
})
white_paint.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678250020/White_Paint_BedRoom_pdjz9i.jpg')), filename: 'white_paint.png', content_type: 'image/png')
puts "created white paint"

modern_short_dresser = Item.create({
  name: "Short modern dresser",
  price: 380,
  description: "20 x 40 x 120"
})
modern_short_dresser.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678250020/Dresser_BedRoom_iif32a.jpg')), filename: 'modern_short_dresser', content_type: 'image/png')
puts "created modern short dresser"

puts "created all modern bedroom items with images attahced"













puts "creating preset_item objects"
modern_preset1 = PresetItem.create({
  preset_id: modern_bedroom.id,
  item_id: modern_bed.id
})

modern_preset2 = PresetItem.create({
  preset_id: modern_bedroom.id,
  item_id: modern_nightstand.id
})

modern_preset3 = PresetItem.create({
  preset_id: modern_bedroom.id,
  item_id: modern_floor.id
})

modern_preset4 = PresetItem.create({
  preset_id: modern_bedroom.id,
  item_id: modern_dresser.id
})

modern_preset5 = PresetItem.create({
  preset_id: modern_bedroom.id,
  item_id: modern_lamp.id
})

modern_preset6 = PresetItem.create({
  preset_id: modern_bedroom.id,
  item_id: white_paint.id
})

modern_preset7 = PresetItem.create({
  preset_id: modern_bedroom.id,
  item_id: modern_short_dresser.id
})

puts "created preset_items for mdoern bedroom"





puts "creating preset modern living room"
modern_living_room = Preset.create({
  style: "Modern",
  room: "Living room"
})
puts "modern living room preset created"
puts "attaching modern living room photo"
modern_living_room.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678256308/LivingRoom_Main_io1hfu.jpg')), filename: 'modern_living_room.png', content_type: 'image/png')
puts "modern living room photo attached"


puts "creating items for the modern living room"
modern_closet = Item.create!({
  name: "Modern Closet",
  price: 260,
  description: "20 x 40 x 120"
})
modern_closet.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678256308/Closet_LivingRoom_qywqlr.jpg')), filename: 'modern_closet.png', content_type: 'image/png')
puts "created modern closet"


modern_coffee_table1 = Item.create!({
  name: "Modern coffee table",
  price: 40,
  description: "20 x 40 x 120"
})
modern_coffee_table1.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678256308/Coffee_Table_LivingRoom_qhnav4.jpg')), filename: 'modern_coffee_table1.png', content_type: 'image/png')
puts "created modern small coffee table 1"


modern_coffee_table2 = Item.create!({
  name: "Modern coffee table",
  price: 60,
  description: "20 x 40 x 120"
})
modern_coffee_table2.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678256307/Coffee_table_LivingRoom_txkalz.png')), filename: 'modern_coffee_table2.png', content_type: 'image/png')
puts "created modern coffee table 2"


modern_wood_floor = Item.create!({
  name: "Modern wood floor",
  price: 30,
  description: "20 x 40 x 120"
})
modern_wood_floor.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678256307/Floor_LivingRoom_bbpxkq.jpg')), filename: 'modern_wood_floor', content_type: 'image/png')
puts "created modern wood floor"


modern_lamp = Item.create!({
  name: "Modern lamp",
  price: 67,
  description: "20 x 40 x 120"
})
modern_lamp.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678256308/Lamp_LivingRoom_bizkxj.jpg')), filename: 'modern_lamp', content_type: 'image/png')
puts "created modern lamp"


modern_sofa = Item.create!({
  name: "Modern sofa",
  price: 67,
  description: "20 x 40 x 120"
})
modern_sofa.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678256308/Sofa_LivingRoom_icyvvx.jpg')), filename: 'modern_sofa', content_type: 'image/png')
puts "created modern sofa"


modern_curtains = Item.create!({
  name: "Modern curtains",
  price: 84,
  description: "20 x 40 x 120"
})
modern_curtains.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678256308/White_Curtain_LivingRoom_be0m9z.jpg')), filename: 'modern_curtains', content_type: 'image/png')
puts "created modern sofa"

# white paint dublicate !!!!!!!

puts "created modern living room elements"















puts "creating preset_item objects"
modern_preset8 = PresetItem.create({
  preset_id: modern_living_room.id,
  item_id: modern_closet.id
})


puts "creating preset_item objects"
modern_preset9 = PresetItem.create({
  preset_id: modern_living_room.id,
  item_id: modern_coffee_table1.id
})

puts "creating preset_item objects"
modern_preset10 = PresetItem.create({
  preset_id: modern_living_room.id,
  item_id: modern_coffee_table2.id
})

puts "creating preset_item objects"
modern_preset11 = PresetItem.create({
  preset_id: modern_living_room.id,
  item_id: modern_wood_floor.id
})

puts "creating preset_item objects"
modern_preset12 = PresetItem.create({
  preset_id: modern_living_room.id,
  item_id: modern_lamp.id
})

puts "creating preset_item objects"
modern_preset13 = PresetItem.create({
  preset_id: modern_living_room.id,
  item_id: modern_sofa.id
})

puts "creating preset_item objects"
modern_preset14 = PresetItem.create({
  preset_id: modern_living_room.id,
  item_id: modern_curtains.id
})

puts "creating preset_item objects"
modern_preset14 = PresetItem.create({
  preset_id: modern_living_room.id,
  item_id: white_paint.id
})


puts "seeding done"
