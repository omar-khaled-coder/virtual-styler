
require 'open-uri'


puts "destoying designers"
Designer.destroy_all
puts "designers destroyed"

puts "destoying bookings"
Booking.destroy_all
puts "bookings destroyed"

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

john = User.create!({
  first_name: "John",
  last_name: "Doe",
  email: "john@gmail.com",
  password: "123456"
})
puts "created user John Doe, email: john@gmail.com password: 123456"
puts "attaching John's avatar"
john.avatar.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678248781/team-1_vmn52o.jpg')), filename: 'John_Doe.png', content_type: 'image/png')
puts "attached John's avatar"

dave = User.create!({
  first_name: "Dave",
  last_name: "Smith",
  email: "dave@gmail.com",
  password: "123456"
})
puts "created user Dave smith, email: dave@gmail.com password: 123456"
puts "attaching Dave's avatar"
dave.avatar.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678248781/team-1_vmn52o.jpg')), filename: 'John_Doe.png', content_type: 'image/png')
puts "attached Dave's avatar"

alice = User.create!({
  first_name: "Alice",
  last_name: "Kowalski",
  email: "alice@gmail.com",
  password: "123456"
})
puts "created user alice kowalsi, email: alice@gmail.com password: 123456"
puts "attaching alice's avatar"
alice.avatar.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678248781/team-1_vmn52o.jpg')), filename: 'John_Doe.png', content_type: 'image/png')
puts "attached alice's avatar"






# puts "creating preset"
# modern_bedroom = Preset.create({
#   style: "Modern",
#   room: "Bedroom"
# })
# puts "modern bedroom preset created"
# puts "attaching modern bedroom photo"
# modern_bedroom.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678249532/BedRoom_main_sa7etc.jpg')), filename: 'modern_bedroom.png', content_type: 'image/png')
# puts "modern bedroom photo attached"












# puts "creating items for the modern bedroom"
# modern_bed = Item.create({
#   name: "Modern Bed",
#   price: 300,
#   description: "20 x 40 x 120"
# })
# modern_bed.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678250023/Bed_BedRoom_lqyftq.jpg')), filename: 'modern_bed.png', content_type: 'image/png')
# puts "created modern bed"

# modern_nightstand = Item.create({
#   name: "Modern nightstand",
#   price: 220,
#   description: "20 x 40 x 120"
# })
# modern_nightstand.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678250023/Nightstand_BedRoom_mtme3k.jpg')), filename: 'modern_nightstand.png', content_type: 'image/png')
# puts "created modern nightstand"

# modern_floor = Item.create({
#   name: "Modern floor",
#   price: 30,
#   description: "20 x 40 x 120"
# })
# modern_floor.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678250022/Floor_BedRoom_kuwvrx.jpg')), filename: 'modern_floor.png', content_type: 'image/png')
# puts "created modern floor"

# modern_dresser = Item.create({
#   name: "Modern dresser",
#   price: 450,
#   description: "20 x 40 x 120"
# })
# modern_dresser.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678250020/Tall_Dresser__BedRoom_y7yviq.jpg')), filename: 'modern_dresser.png', content_type: 'image/png')
# puts "created modern dresser"

# modern_lamp = Item.create({
#   name: "Modern lamp",
#   price: 50,
#   description: "20 x 40 x 120"
# })
# modern_lamp.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678250021/Lamp-stone_BedRoom_s_ly2ltw.jpg')), filename: 'modern_lamp.png', content_type: 'image/png')
# puts "created modern lamp"

# white_paint = Item.create({
#   name: "White paint",
#   price: 50,
#   description: "20 x 40 x 120"
# })
# white_paint.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678250020/White_Paint_BedRoom_pdjz9i.jpg')), filename: 'white_paint.png', content_type: 'image/png')
# puts "created white paint"

# modern_short_dresser = Item.create({
#   name: "Short modern dresser",
#   price: 380,
#   description: "20 x 40 x 120"
# })
# modern_short_dresser.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678250020/Dresser_BedRoom_iif32a.jpg')), filename: 'modern_short_dresser', content_type: 'image/png')
# puts "created modern short dresser"

# puts "created all modern bedroom items with images attahced"













# puts "creating preset_item objects"
# modern_preset1 = PresetItem.create({
#   preset_id: modern_bedroom.id,
#   item_id: modern_bed.id
# })

# modern_preset2 = PresetItem.create({
#   preset_id: modern_bedroom.id,
#   item_id: modern_nightstand.id
# })

# modern_preset3 = PresetItem.create({
#   preset_id: modern_bedroom.id,
#   item_id: modern_floor.id
# })

# modern_preset4 = PresetItem.create({
#   preset_id: modern_bedroom.id,
#   item_id: modern_dresser.id
# })

# modern_preset5 = PresetItem.create({
#   preset_id: modern_bedroom.id,
#   item_id: modern_lamp.id
# })

# modern_preset6 = PresetItem.create({
#   preset_id: modern_bedroom.id,
#   item_id: white_paint.id
# })

# modern_preset7 = PresetItem.create({
#   preset_id: modern_bedroom.id,
#   item_id: modern_short_dresser.id
# })

# puts "created preset_items for modern bedroom"





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
modern_closet = Item.create({
  name: "The Kast",
  price: 250,
  description: "120 x 40 x 120"
})
modern_closet.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678256308/Closet_LivingRoom_qywqlr.jpg')), filename: 'modern_closet.png', content_type: 'image/png')
puts "created modern closet"



modern_coffee_table1 = Item.create({
  name: "Wicker Coffee Table",
  price: 40,
  description: "35 x 35 x 60"
})
modern_coffee_table1.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678256308/Coffee_Table_LivingRoom_qhnav4.jpg')), filename: 'modern_coffee_table1.png', content_type: 'image/png')
puts "created modern small coffee table 1"


modern_coffee_table2 = Item.create({
  name: "Luxurious Sit Table",
  price: 60,
  description: "65 x 40 x 70"
})
modern_coffee_table2.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678256307/Coffee_table_LivingRoom_txkalz.png')), filename: 'modern_coffee_table2.png', content_type: 'image/png')
puts "created modern coffee table 2"



modern_wood_floor = Item.create({
  name: "Beige wood XL",
  price: 35,
  description: "20 x 40 x 120"
})
modern_wood_floor.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678256307/Floor_LivingRoom_bbpxkq.jpg')), filename: 'modern_wood_floor', content_type: 'image/png')
puts "created modern wood floor"


modern_lamp = Item.create({
  name: "High Lamp V64",
  price: 55,
  description: "20 x 10 x 150"
})
modern_lamp.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678256308/Lamp_LivingRoom_bizkxj.jpg')), filename: 'modern_lamp', content_type: 'image/png')
puts "created modern lamp"


modern_sofa = Item.create({
  name: "Corner Sofa G-B",
  price: 1200,
  description: "250 x 120 x 120"
})
modern_sofa.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678256308/Sofa_LivingRoom_icyvvx.jpg')), filename: 'modern_sofa', content_type: 'image/png')
puts "created modern sofa"


modern_curtains = Item.create({
  name: "White Curtains L",
  price: 90,
  description: "200 x 200 x 5"
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

# puts "creating preset_item objects"
# modern_preset14 = PresetItem.create({
#   preset_id: modern_living_room.id,
#   item_id: white_paint.id
# })




# Modern_LivingRoom_Part_2

# puts "creating preset modern living room 2"
# modern_living_room = Preset.create({
#   style: "Modern",
#   room: "Living room part 2"
# })
# puts "modern living room 2 preset created"
# puts "attaching modern living room 2 photo"
# livingroom_main_2.photo.attach(io: File.open(URI.open('')), filename: 'LivingRoom_Main_2.png', content_type: 'image/png')
# puts "modern living room 2 photo attached"


# puts "creating items for the modern living room"
# livingroom_chair_black_2 = Item.create({
#   name: "Chair Black AU",
#   price: 50,
#   description: "50 x 50 x 100"
# })
# livingroom_chair_black_2.photo.attach(io: File.open(URI.open('')), filename: 'LivingRoom_Chair_Black_2.png', content_type: 'image/png')
# puts "created Chair Black"


# livingroom_coffee_table_2 = Item.create({
#   name: "Coffee Table Wood-1",
#   price: 40,
#   description: "40 x 40 x 60"
# })
# livingroom_coffee_table_2.photo.attach(io: File.open(URI.open('')), filename: 'LivingRoom_Coffee_Table_2.png', content_type: 'image/png')
# puts "created LivingRoom_Coffee_Table_2"


# livingroom_lamp_2 = Item.create({
#   name: "High Lamp Black",
#   price: 60,
#   description: "20 x 20 x 120"
# })
# livingroom_lamp_2.photo.attach(io: File.open(URI.open('')), filename: 'LivingRoom_Coffee_Table_2.png', content_type: 'image/png')
# puts "created modern lamp 2"


# livingroom_lamp_muliple_2 = Item.create({
#   name: "Muliple Lamp T-6",
#   price: 200,
#   description: "50 x 50 x 100"
# })
# livingroom_lamp_muliple_2.attach(io: File.open(URI.open('')), filename: 'LivingRoom_Lamp_Muliple_2.png', content_type: 'image/png')
# puts "created modern lamp muliple 2"


# livingroom_pillow_2 = Item.create({
#   name: "Pillow White",
#   price: 20,
#   description: "20 x 20 x 10"
# })
# livingroom_pillow_2.photo.attach(io: File.open(URI.open('')), filename: 'LivingRoom_Pillow_2.png', content_type: 'image/png')
# puts "created livingroom pillow 2"


# livingroom_sofa_2 = Item.create({
#   name: "Corner Sofa Beige",
#   price: 1200,
#   description: "200 x 100 x 120"
# })
# livingroom_sofa_2.photo.attach(io: File.open(URI.open('')), filename: 'LivingRoom_Sofa_2.png', content_type: 'image/png')
# puts "created modern sofa"


# livingroom_carpet_gray_2 = Item.create({
#   name: "Carpet Gray LV",
#   price: 400,
#   description: "200 x 200 x 5"
# })
# livingroom_carpet_gray_2.photo.attach(io: File.open(URI.open('')), filename: 'LivingRoom_Floor_Gray_2.png', content_type: 'image/png')
# puts "created carpet gray"

# livingroom_beige_curtain_2 = Item.create({
#   name: "Curtain Beige 54",
#   price: 600,
#   description: "400 x 5 x 250"
# })
# livingroom_beige_curtain_2.photo.attach(io: File.open(URI.open('')), filename: 'LivingRoom_Beige_Curtain_2.png', content_type: 'image/png')
# puts "created beige curtain"

# livingroom_floor_gray_2 = Item.create({
#   name: "floor Gray XL",
#   price: 20,
#   description: "50 x 20 x 5"
# })
# livingroom_floor_gray_2.photo.attach(io: File.open(URI.open('')), filename: 'LivingRoom_Floor_Gray_2.png', content_type: 'image/png')
# puts "created floor gray"

# livingroom_white_paint_2 = Item.create({
#   name: "Carpet Gray LV",
#   price: 400,
#   description: "200 x 200 x 5"
# })
# livingroom_white_paint_2.photo.attach(io: File.open(URI.open('')), filename: 'LivingRoom_White_Paint_2.png', content_type: 'image/png')
# puts "created white paint"



# # BedRoom part 2

# puts "creating preset modern bedroom 2"
# bed_room_2 = Preset.create({
#   style: "Modern",
#   room: "Bed Room part 2"
# })
# puts "modern Bed Room 2 preset created"
# puts "attaching modern bed room 2 photo"
# bedroom_main_2.photo.attach(io: File.open(URI.open('')), filename: 'BedRoom_Main_2.png', content_type: 'image/png')
# puts "modern bed room 2 photo attached"


# puts "creating items for the modern bed room 2"
# bedroom_bed_2 = Item.create({
#   name: "Wood Bed XL",
#   price: 800,
#   description: "200 x 200 x 50"
# })
# bedroom_bed_2.photo.attach(io: File.open(URI.open('')), filename: 'BedRoom_Bed_2.png', content_type: 'image/png')
# puts "created wooden bed"


# bedroom_blanket_2 = Item.create({
#   name: "Comfortably blanket XXL",
#   price: 80,
#   description: "200 x 200 x 5"
# })
# bedroom_blanket_2.photo.attach(io: File.open(URI.open('')), filename: 'BedRoom_Blanket_2.png', content_type: 'image/png')
# puts "created blanket 2"


# bedroom_pillow_2 = Item.create({
#   name: "White Pillow-v4",
#   price: 40,
#   description: "20 x 30 x 10"
# })
# bedroom_pillow_2.photo.attach(io: File.open(URI.open('')), filename: 'BedRoom_Pillow_2.png', content_type: 'image/png')
# puts "created modern pillow"


# bedroom_tray_2 = Item.create({
#   name: "Wood Tray",
#   price: 35,
#   description: "30 x 45 x 7,5"
# })
# bedroom_tray_2.attach(io: File.open(URI.open('')), filename: 'BedRoom_Tray_2.png', content_type: 'image/png')
# puts "created modern tray"


# bedroom_leather_chair_2 = Item.create({
#   name: "Pillow White",
#   price: 250,
#   description: "60 x 40 x 120"
# })
# bedroom_leather_chair_2.photo.attach(io: File.open(URI.open('')), filename: 'BedRoom_leather_chair_2.png', content_type: 'image/png')
# puts "created leather chair"


# bedroom_bench_2 = Item.create({
#   name: "Green Bench Suyen",
#   price: 500,
#   description: "50 x 100 x 100"
# })
# bedroom_bench_2.photo.attach(io: File.open(URI.open('')), filename: 'BedRoom_Bench_2.png', content_type: 'image/png')
# puts "created bench 2"


# bedroom_wooden_floor_2 = Item.create({
#   name: "Studio Wood",
#   price: 60,
#   description: "50 x 20 x 5"
# })
# bedroom_wooden_floor_2.photo.attach(io: File.open(URI.open('')), filename: 'BedRoom_Wooden_Floor_2.png', content_type: 'image/png')
# puts "created wooden floor 2"

# bedroom_wooden_wall_2 = Item.create({
#   name: "Jual Wood Wall",
#   price: 120,
#   description: "50 x 50 x 5"
# })
# bedroom_wooden_wall_2.photo.attach(io: File.open(URI.open('')), filename: 'BedRoom_Wooden_Wall_2.png', content_type: 'image/png')
# puts "created wooden wall 2"

# livingroom_floor_gray_2 = Item.create({
#   name: "Jual Wood Wall",
#   price: 20,
#   description: "50 x 50 x 5"
# })
# livingroom_floor_gray_2.photo.attach(io: File.open(URI.open('')), filename: 'LivingRoom_Floor_Gray_2.png', content_type: 'image/png')
# puts "created wood wall"







puts "creating designers"

designer1 = Designer.create!({
  bio: "Meet Dave, an innovative and versatile graphic designer with a talent for creating visually stunning designs. With a keen eye for detail and a passion for staying up-to-date with the latest design trends, Chris brings a fresh and modern approach to his work. Whether it's designing logos, websites, or marketing materials, Chris is dedicated to creating designs that effectively communicate his clients' brand and message. With a strong work ethic and excellent communication skills, Chris is committed to delivering high-quality work that exceeds his clients' expectations.",
  user: dave
})

puts "created designer 1"
puts "attached designer1 avatar"
puts "attaching designer1 project photo"
designer1.project_photos.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678527296/maxresdefault_olb3qo.jpg')), filename: 'designer1-project1', content_type: 'image/png')
designer1.project_photos.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678527303/interior-design-ideas-for-hall-768x512_zuiklv.jpg')), filename: 'designer1-project2', content_type: 'image/png')
designer1.project_photos.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678527313/pexels-photo-1571460.jpeg_i2sa2e.jpg')), filename: 'designer1-project3', content_type: 'image/png')
designer1.project_photos.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678527330/interior-design-ideas-idea-1-35idmistonroad-anouska-tamony-1644331792_fj22rp.jpg')), filename: 'designer1-project4', content_type: 'image/png')
puts "attached designer 1 project images"

designer2 = Designer.create!({
  bio: "Meet Alice, an imaginative and creative interior designer with a keen eye for detail. With a passion for transforming spaces into beautiful and functional works of art, Margaret infuses her clients' needs and style into her eclectic designs. Inspired by nature, art, and architecture, she mixes and matches colors, textures, and patterns to create unique spaces that reflect her clients' personalities and tastes. With great communication and collaboration skills, Margaret listens carefully to her clients' feedback and works tirelessly to ensure their complete satisfaction with the end result.",
  user: alice
})

puts "created designer 2"
puts "attached designer2 avatar"
puts "attaching designer2 project photo"
designer2.project_photos.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678528181/Tendenze2020_kpwja7.jpg')), filename: 'designer2-project1', content_type: 'image/png')
designer2.project_photos.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678528192/programs-interior-design-hero-fall-2021_qwiho0.jpg')), filename: 'designer2-project2', content_type: 'image/png')
designer2.project_photos.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678528206/home-interior-ideas_me0o2b.jpg')), filename: 'designer2-project3', content_type: 'image/png')
designer2.project_photos.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1678528213/WhatsApp-Image-2021-05-20-at-19.35.10-1_l4nvs0.jpg')), filename: 'designer2-project4', content_type: 'image/png')
puts "attached designer 2 project images"

puts "


#   +-++-++-++-++-++-++-+
#   |S||e||e||d||i||n||g|
#   +-++-++-++-++-++-++-+
#   +-++-++-++-+
#   |D||o||n||e|
#   +-++-++-++-+

"
