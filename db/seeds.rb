require "open-uri"

puts 'Deleting current seed...'

ChefReview.destroy_all
RecipeReview.destroy_all
Message.destroy_all
Chat.destroy_all
Booking.destroy_all
Recipe.destroy_all
Chef.destroy_all
User.destroy_all

puts 'Starting seed..'

# -------- USERS  START ---------------- -- -- -- --- -- -- -- -- -- --

puts 'creating users...'
file = URI.open('https://images.unsplash.com/photo-1531432162873-97ad5f511056?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1534&q=80')
kathy = User.new(
  first_name: 'Kathy',
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: 'kathy@mymail.com',
  password: 123456
  )
kathy.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
kathy.save!

file = URI.open('https://images.unsplash.com/photo-1460056560479-46cf73637e6e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1417&q=80')
raj = User.new(
  first_name: 'Raj',
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: 'raj@mymail.com',
  password: 123456
  )
raj.photo.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
raj.save!


file = URI.open('https://images.unsplash.com/photo-1507438222021-237ff73669b5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1332&q=80')
luis = User.new(
  first_name: 'Luis',
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: 'luis@mymail.com',
  password: 123456
  )
luis.photo.attach(io: file, filename: 'nes2.png', content_type: 'image/png')
luis.save!

file = URI.open('https://images.unsplash.com/photo-1482849737880-498de71dda8d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1280&q=80')
dragan = User.new(
  first_name: 'Dragan',
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: 'dragan@mymail.com',
  password: 123456
  )
dragan.photo.attach(io: file, filename: 'nes3.png', content_type: 'image/png')
dragan.save!

file = URI.open('https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
bec = User.new(
  first_name: "Bec",
  last_name: "Brown",
  username: Faker::Internet.username,
  email: 'bec@mymail.com',
  password: 123456
  )
bec.photo.attach(io: file, filename: 'nes4.png', content_type: 'image/png')
bec.save!

file = URI.open('https://images.unsplash.com/photo-1612282131240-6e878907d0f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1308&q=80')
chaz = User.new(
  first_name: "Chaz",
  last_name: "James",
  username: Faker::Internet.username,
  email: 'chaz@mymail.com',
  password: 123456
  )
chaz.photo.attach(io: file, filename: 'nes5.png', content_type: 'image/png')
chaz.save!

file = URI.open('https://images.unsplash.com/photo-1595273670150-bd0c3c392e46?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fGNoZWZ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
jamal = User.new(
  first_name: "Jamal",
  last_name: "Al Tamimi",
  username: Faker::Internet.username,
  email: 'Jamal@mymail.com',
  password: 123456
  )
jamal.photo.attach(io: file, filename: 'nes6.png', content_type: 'image/png')
jamal.save!

file = URI.open('https://images.unsplash.com/photo-1612282131240-6e878907d0f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1308&q=80')
roger = User.new(
  first_name: "Roger",
  last_name: "D’Angeline",
  username: Faker::Internet.username,
  email: 'roger@mymail.com',
  password: 123456
  )
roger.photo.attach(io: file, filename: 'nes6.png', content_type: 'image/png')
roger.save!

file = URI.open('https://images.unsplash.com/photo-1519164497992-65f6b58a2981?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjl8fGFmcmljYW4lMjBjaGVmfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
samuel = User.new(
  first_name: "Samuel",
  last_name: "De Grasse",
  username: Faker::Internet.username,
  email: 'samuel@mymail.com',
  password: 123456
  )
samuel.photo.attach(io: file, filename: 'nes7.png', content_type: 'image/png')
samuel.save!


file = URI.open('https://images.unsplash.com/photo-1592332297790-c7c27c38ecb0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8cnVzc2lhbiUyMGNoZWZ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
slavo = User.new(
  first_name: "Slavo",
  last_name: "Bukich",
  username: Faker::Internet.username,
  email: "slavo@mymail.com",
  password: 123456
  )
slavo.photo.attach(io: file, filename: 'nes8.png', content_type: 'image/png')
slavo.save!

puts "#{User.count} users created"

 # -------- USERS  END ----------------


# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --


# -------- CHEFS START ----------------
puts 'creating chefs...'
bec_chef = Chef.create!(
  cuisine: 'Thai',
  user_id: bec.id,
  )

chaz_chef = Chef.create!(
  cuisine: 'Modern Australian',
  user_id: chaz.id,
  )
jamal_chef = Chef.create!(
  cuisine: 'Middle Eastern',
  user_id: jamal.id,
  )
roger_chef = Chef.create!(
  cuisine: 'French',
  user_id: roger.id,
  )
samuel_chef = Chef.create!(
  cuisine: 'North African',
  user_id: samuel.id,
  )
slavo_chef = Chef.create!(
  cuisine: 'Balkan',
  user_id: slavo.id,
  )

puts "#{Chef.count} chefs created"

# -------- CHEFS END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --

# -------- RECIPES START ----------------

puts 'creating recipes...'
    # chef bec recipes
file = URI.open('https://images.unsplash.com/photo-1514944288352-fffac99f0bdf?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJhd25zfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
bec_one = Recipe.new(
  name: 'Prawns with Sweet Chilli Sauce',
  description: Faker::Food.description,
  cuisine: 'Thai',
  cook_time: rand(30..90),
  chef_id: bec_chef.id,
  price: rand(30..75)
  )
bec_one.photo.attach(io: file, filename: "nes9.png", content_type: 'image/png')
bec_one.save!

file = URI.open('https://images.unsplash.com/photo-1612443016520-314f09b3d449?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2hpY2tlbiUyMGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
bec_two = Recipe.new(
  name: 'Roast Chicken with Sauce Chasseur',
  description: Faker::Food.description,
  cuisine: 'Thai',
  cook_time: rand(30..90),
  chef_id: bec_chef.id,
  price: rand(30..75)
  )
bec_two.photo.attach(io: file, filename: "nes10.png", content_type: 'image/png')
bec_two.save!

file = URI.open('https://images.unsplash.com/photo-1595456982104-14cc660c4d22?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fHNhc2hpbWl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
bec_three = Recipe.new(
  name: 'Sashimi with Chilli-lime Dressing',
  description: Faker::Food.description,
  cuisine: 'Thai',
  cook_time: rand(30..90),
  chef_id: bec_chef.id,
  price: rand(30..75)
  )
bec_three.photo.attach(io: file, filename: "nes11.png", content_type: 'image/png')
bec_three.save!

file = URI.open('https://images.unsplash.com/photo-1601091745482-b2b5942e567e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDZ8fGZyaWVkJTIwYXNwYXJhZ3VzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
bec_four = Recipe.new(
  name: 'Stir-fried Asparagus',
  description: Faker::Food.description,
  cuisine: 'Thai',
  cook_time: rand(30..90),
  chef_id: bec_chef.id,
  price: rand(30..75)
  )
bec_four.photo.attach(io: file, filename: "nes12.png", content_type: 'image/png')
bec_four.save!

file = URI.open('https://images.unsplash.com/photo-1603356887214-0441954124ae?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
bec_five = Recipe.new(
  name: 'Pork & Eggs',
  description: Faker::Food.description,
  cuisine: 'Thai',
  cook_time: rand(30..90),
  chef_id: bec_chef.id,
  price: rand(30..75)
  )
bec_five.photo.attach(io: file, filename: "nes13.png", content_type: 'image/png')
bec_five.save!

file = URI.open('https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c291cCUyMG5vb2RsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
bec_six = Recipe.new(
  name: 'Ginger Garlic Noodle Soup',
  description: Faker::Food.description,
  cuisine: 'Thai',
  cook_time: rand(30..90),
  chef_id: bec_chef.id,
  price: rand(30..75)
  )
bec_six.photo.attach(io: file, filename: "nes14.png", content_type: 'image/png')
bec_six.save!

   # chef chaz recipes
file = URI.open('https://images.unsplash.com/photo-1471253387723-35c53c9f97ca?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGZyaXR0ZXJzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
chaz_one = Recipe.new(
  name: 'Zucchini Fritters',
  description: Faker::Food.description,
  cuisine: 'Modern Australian',
  cook_time: rand(30..90),
  chef_id: chaz_chef.id,
  price: rand(30..75)
  )
chaz_one.photo.attach(io: file, filename: "nes15.png", content_type: 'image/png')
chaz_one.save!

file = URI.open('https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OTV8fGZpc2glMjBmb29kfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
chaz_two = Recipe.new(
  name: 'Seared Hiramasa Salmon',
  description: Faker::Food.description,
  cuisine: 'Modern Australian',
  cook_time: rand(30..90),
  chef_id: chaz_chef.id,
  price: rand(30..75)
  )
chaz_two.photo.attach(io: file, filename: "nes16.png", content_type: 'image/png')
chaz_two.save!

file = URI.open('https://images.unsplash.com/photo-1591107576521-87091dc07797?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fHRhcnQlMjBmb29kfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
chaz_three = Recipe.new(
  name: 'Baked Passionfruit Tarts',
  description: Faker::Food.description,
  cuisine: 'Modern Australian',
  cook_time: rand(30..90),
  chef_id: chaz_chef.id,
  price: rand(30..75)
  )
chaz_three.photo.attach(io: file, filename: "nes17.png", content_type: 'image/png')
chaz_three.save!

file = URI.open('https://images.unsplash.com/photo-1609770424775-39ec362f2d94?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8cmlzb3R0b3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
chaz_four = Recipe.new(
  name: 'Mushroom & Chestnut Risotto',
  description: Faker::Food.description,
  cuisine: 'Modern Australian',
  cook_time: rand(30..90),
  chef_id: chaz_chef.id,
  price: rand(30..75)
  )
chaz_four.photo.attach(io: file, filename: "nes18.png", content_type: 'image/png')
chaz_four.save!

file = URI.open('https://images.unsplash.com/photo-1513623954575-263b061498a3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZHVjayUyMGZvb2R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
chaz_five = Recipe.new(
  name: 'Glazed Duck Drumsticks',
  description: Faker::Food.description,
  cuisine: 'Modern Australian',
  cook_time: rand(30..90),
  chef_id: chaz.id,
  price: rand(30..75)
  )
chaz_five.photo.attach(io: file, filename: "nes19.png", content_type: 'image/png')
chaz_five.save!

file = URI.open('https://images.unsplash.com/photo-1596662951482-0c4ba74a6df6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGJ1cmdlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
chaz_six = Recipe.new(
  name: 'Lamb Karaage Sliders',
  description: Faker::Food.description,
  cuisine: 'Modern Australian',
  cook_time: rand(30..90),
  chef_id: chaz_chef.id,
  price: rand(30..75)
  )
chaz_six.photo.attach(io: file, filename: "nes20.png", content_type: 'image/png')
chaz_six.save!

# chef jamal recipes
file = URI.open('https://images.unsplash.com/photo-1598683386906-71ef9caef177?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8&auto=format&fit=crop&w=800&q=60')
jamal_one = Recipe.new(
  name: 'Hummus',
  description: Faker::Food.description,
  cuisine: 'Middle Eastern',
  cook_time: rand(30..90),
  chef_id: jamal_chef.id,
  price: rand(30..75)
  )
jamal_one.photo.attach(io: file, filename: "nes21.png", content_type: 'image/png')
jamal_one.save!

file = URI.open('https://images.unsplash.com/photo-1594040815645-5442fb6d48f6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8dGFib3VsaXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
jamal_two = Recipe.new(
  name: 'Tabbouleh',
  description: Faker::Food.description,
  cuisine: 'Middle Eastern',
  cook_time: rand(30..90),
  chef_id: jamal_chef.id,
  price: rand(30..75)
  )
jamal_two.photo.attach(io: file, filename: "nes22.png", content_type: 'image/png')
jamal_two.save!

file = URI.open('https://images.unsplash.com/photo-1573821662905-00f8c205c148?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80')
jamal_three = Recipe.new(
  name: 'Manakeesh',
  description: Faker::Food.description,
  cuisine: 'Middle Eastern',
  cook_time: rand(30..90),
  chef_id: jamal_chef.id,
  price: rand(30..75)
  )
jamal_three.photo.attach(io: file, filename: "nes23.png", content_type: 'image/png')
jamal_three.save!

file = URI.open('https://images.unsplash.com/photo-1603496987674-79600a000f55?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjl8fGNoaWNrZW4lMjBmb29kJTIwcmljZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
jamal_four = Recipe.new(
  name: 'Kabsa',
  description: Faker::Food.description,
  cuisine: 'Middle Eastern',
  cook_time: rand(30..90),
  chef_id: jamal_chef.id,
  price: rand(30..75)
  )
jamal_four.photo.attach(io: file, filename: "nes24.png", content_type: 'image/png')
jamal_four.save!

file = URI.open('https://images.unsplash.com/photo-1593001872095-7d5b3868fb1d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8ZmFsYWZlbHxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60')
jamal_five = Recipe.new(
  name: 'Falafel',
  description: Faker::Food.description,
  cuisine: 'Middle Eastern',
  cook_time: rand(30..90),
  chef_id: jamal_chef.id,
  price: rand(30..75)
  )
jamal_five.photo.attach(io: file, filename: "nes25.png", content_type: 'image/png')
jamal_five.save!

# chef roger recipes
file = URI.open('https://images.unsplash.com/photo-1605992728160-8d119bf2b5db?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cGF0ZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
roger_one = Recipe.new(
  name: 'Duck Liver Parfait',
  description: Faker::Food.description,
  cuisine: 'French',
  cook_time: rand(30..90),
  chef_id: roger_chef.id,
  price: rand(30..75)
  )
roger_one.photo.attach(io: file, filename: "nes27.png", content_type: 'image/png')
roger_one.save!

file = URI.open('https://images.unsplash.com/photo-1591386767153-987783380885?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhbiUyMHN0ZXd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
roger_two = Recipe.new(
  name: 'Cassoulet',
  description: Faker::Food.description,
  cuisine: 'French',
  cook_time: rand(30..90),
  chef_id: roger_chef.id,
  price: rand(30..75)
  )
roger_two.photo.attach(io: file, filename: "nes28.png", content_type: 'image/png')
roger_two.save!

file = URI.open('https://images.unsplash.com/photo-1605591099585-087b3d54cd45?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1342&q=80')
roger_three = Recipe.new(
  name: 'Chorizo & Egg Breakfast Pizza',
  description: Faker::Food.description,
  cuisine: 'French',
  cook_time: rand(30..90),
  chef_id: roger_chef.id,
  price: rand(30..75)
  )
roger_three.photo.attach(io: file, filename: "nes29.png", content_type: 'image/png')
roger_three.save!

file = URI.open('https://images.unsplash.com/photo-1535920527002-b35e96722eb9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')
roger_four = Recipe.new(
  name: 'Pecan Pie',
  description: Faker::Food.description,
  cuisine: 'French',
  cook_time: rand(30..90),
  chef_id: roger_chef.id,
  price: rand(30..75)
  )
roger_four.photo.attach(io: file, filename: "nes30.png", content_type: 'image/png')
roger_four.save!

file = URI.open('https://images.unsplash.com/photo-1481070555726-e2fe8357725c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjJ8fHxlbnwwfHx8&auto=format&fit=crop&w=800&q=60')
roger_five = Recipe.new(
  name: 'Le Burger du Poulet',
  description: Faker::Food.description,
  cuisine: 'French',
  cook_time: rand(30..90),
  chef_id: roger_chef.id,
  price: rand(30..75)
  )
roger_five.photo.attach(io: file, filename: "nes31.png", content_type: 'image/png')
roger_five.save!

file = URI.open('https://images.unsplash.com/photo-1513623954575-263b061498a3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
roger_six = Recipe.new(
  name: 'Duck Confit',
  description: Faker::Food.description,
  cuisine: 'French',
  cook_time: rand(30..90),
  chef_id: roger_chef.id,
  price: rand(30..75)
  )
roger_six.photo.attach(io: file, filename: "nes32.png", content_type: 'image/png')
roger_six.save!

# chef samuel recipes
file = URI.open('https://images.unsplash.com/photo-1611712142269-12b7433e28e9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTV8fGFmcmljYW4lMjBmb29kfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
samuel_one = Recipe.new(
  name: 'Moroccan Chicken Rfissa',
  description: Faker::Food.description,
  cuisine: 'North African',
  cook_time: rand(30..90),
  chef_id: samuel_chef.id,
  price: rand(30..75)
  )
samuel_one.photo.attach(io: file, filename: "ne33.png", content_type: 'image/png')
samuel_one.save!

file = URI.open('https://images.unsplash.com/photo-1576577445504-6af96477db52?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTgyfHxtZWF0YmFsbCUyMHNvdXB8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
samuel_two = Recipe.new(
  name: 'Moroccan Meatball Soup',
  description: Faker::Food.description,
  cuisine: 'North African',
  cook_time: rand(30..90),
  chef_id: samuel_chef.id,
  price: rand(30..75)
  )
samuel_two.photo.attach(io: file, filename: "nes34.png", content_type: 'image/png')
samuel_two.save!

file = URI.open('https://images.unsplash.com/photo-1532636875304-0c89119d9b4d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
samuel_three = Recipe.new(
  name: 'Aromatic Lamb with Dates',
  description: Faker::Food.description,
  cuisine: 'North African',
  cook_time: rand(30..90),
  chef_id: samuel_chef.id,
  price: rand(30..75)
  )
samuel_three.photo.attach(io: file, filename: "nes35.png", content_type: 'image/png')
samuel_three.save!

file = URI.open('https://images.unsplash.com/photo-1594041680534-e8c8cdebd659?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTl8fHJvYXN0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
samuel_four = Recipe.new(
  name: 'Morrocan Roast Lamb',
  description: Faker::Food.description,
  cuisine: 'North African',
  cook_time: rand(30..90),
  chef_id: samuel_chef.id,
  price: rand(30..75)
  )
samuel_four.photo.attach(io: file, filename: "nes36.png", content_type: 'image/png')
samuel_four.save!

file = URI.open('https://images.unsplash.com/photo-1519624014191-508652cbd7b5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80')
samuel_five = Recipe.new(
  name: 'Chicken Tagine',
  description: Faker::Food.description,
  cuisine: 'North African',
  cook_time: rand(30..90),
  chef_id: samuel_chef.id,
  price: rand(30..75)
  )
samuel_five.photo.attach(io: file, filename: "nes37.png", content_type: 'image/png')
samuel_five.save!

file = URI.open('https://images.unsplash.com/photo-1512058556646-c4da40fba323?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8cGFuJTIwZnJ5fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
samuel_six = Recipe.new(
  name: 'Mixed-grain Paella with Lamb',
  description: Faker::Food.description,
  cuisine: 'North African',
  cook_time: rand(30..90),
  chef_id: samuel_chef.id,
  price: rand(30..75)
  )
samuel_six.photo.attach(io: file, filename: "nes38.png", content_type: 'image/png')
samuel_six.save!

# chef slavo recipes
file = URI.open('https://images.unsplash.com/photo-1585325701165-351af916e581?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=988&q=80')
slavo_one = Recipe.new(
  name: 'Bosnian Cevapi',
  description: Faker::Food.description,
  cuisine: 'Balkan',
  cook_time: rand(30..90),
  chef_id: slavo_chef.id,
  price: rand(30..75)
  )
slavo_one.photo.attach(io: file, filename: "nes39.png", content_type: 'image/png')
slavo_one.save!

file = URI.open('https://images.unsplash.com/photo-1580476262843-d5e9b687d4d4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8cm9hc3R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
slavo_two = Recipe.new(
  name: 'Roast Pork Shoulder',
  description: Faker::Food.description,
  cuisine: 'Balkan',
  cook_time: rand(30..90),
  chef_id: slavo_chef.id,
  price: rand(30..75)
  )
slavo_two.photo.attach(io: file, filename: "nes40.png", content_type: 'image/png')
slavo_two.save!

file = URI.open('https://images.unsplash.com/photo-1613552496394-4e4b3f074e4f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fHN0ZXd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
slavo_three = Recipe.new(
  name: 'Bosnian Pot',
  description: Faker::Food.description,
  cuisine: 'Balkan',
  cook_time: rand(30..90),
  chef_id: slavo_chef.id,
  price: rand(30..75)
  )
slavo_three.photo.attach(io: file, filename: "nes41.png", content_type: 'image/png')
slavo_three.save!

file = URI.open('https://images.unsplash.com/photo-1602873520153-ec56ca3c205b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YmFrZWQlMjBiZWFuc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
slavo_four = Recipe.new(
  name: 'Baked Beans',
  description: Faker::Food.description,
  cuisine: 'Balkan',
  cook_time: rand(30..90),
  chef_id: slavo_chef.id,
  price: rand(30..75)
  )
slavo_four.photo.attach(io: file, filename: "nes42.png", content_type: 'image/png')
slavo_four.save!

# need two more recieps for slavo

# file = URI.open('')
# slavo_five = Recipe.new(
#   name: 'Pork & Eggs',
#   description: Faker::Food.description,
#   cuisine: 'Balkan',
#   cook_time: rand(30..90),
#   chef_id: slavo.id,
#   price: rand(30..75)
#   )
# slavo_five.photo.attach(io: file, filename: "nes42.png", content_type: 'image/png')
# slavo_five.save!

# file = URI.open('')
# slavo_six = Recipe.new(
#   name: 'Ginger Garlic Noodle Soup',
#   description: Faker::Food.description,
#   cuisine: 'Balkan',
#   cook_time: rand(30..90),
#   chef_id: slavo.id,
#   price: rand(30..75)
#   )
# slavo_six.photo.attach(io: file, filename: "nes43.png", content_type: 'image/png')
# slavo_six.save!

puts "#{Recipe.count} recipes created"

# -------- RECIPES END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --


# -------- INGREDIENTS START ----------------



# -------- INGREDIENTS END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --
# -------- MEASUREMETNS START ----------------



# -------- MEASUREMETNS END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --

# -------- BOOKINGS START ----------------
   #  kathy bookings
puts 'creating bookings...'
booking_one = Booking.create!(
  date: Faker::Date.forward(days: rand(1..14)),
  start_time: Time.now + 1,
  end_time: Time.now + 2,
  video_url: 'www.video.com',
  user_id: kathy.id,
  recipe_id: slavo_two.id
  )
booking_two = Booking.create!(
  date: Faker::Date.backward(days: rand(14..30)),
  start_time: Time.now,
  end_time: Time.now + 1,
  video_url: 'www.video.com',
  user_id: kathy.id,
  recipe_id: slavo_five.id
)
   # dragan bookings
booking_three = Booking.create!(
date: Faker::Date.forward(days: rand(1..14)),
start_time: Time.now + 4,
end_time: Time.now + 5,
video_url: 'www.video.com',
user_id: dragan.id,
recipe_id: roger_two.id
)
booking_four = Booking.create!(
  date: Faker::Date.backward(days: rand(14..30)),
  start_time: Time.now - 4,
  end_time: Time.now - 3,
  video_url: 'www.video.com',
  user_id: dragan.id,
  recipe_id: samuel_one.id
)
booking_five = Booking.create!(
date: Faker::Date.forward(days: rand(1..14)),
start_time: Time.now - 2 ,
end_time: Time.now - 1,
video_url: 'www.video.com',
user_id: dragan.id,
recipe_id: slavo_four.id
)
booking_six = Booking.create!(
  date: Faker::Date.backward(days: rand(14..30)),
  start_time: Time.now,
  end_time: Time.now + 1,
  video_url: 'www.video.com',
  user_id: dragan.id,
  recipe_id: bec_five.id
)
booking_seven = Booking.create!(
  date: Faker::Date.forward(days: rand(14..30)),
  start_time: Time.now,
  end_time: Time.now + 1,
  video_url: 'www.video.com',
  user_id: bec.id,
  recipe_id: chaz_three.id
)
booking_eight = Booking.create!(
  date: Faker::Date.forward(days: rand(14..30)),
  start_time: Time.now,
  end_time: Time.now + 1,
  video_url: 'www.video.com',
  user_id: roger.id,
  recipe_id: jamal_five.id
)
booking_nine = Booking.create!(
  date: Faker::Date.forward(days: rand(14..30)),
  start_time: Time.now,
  end_time: Time.now + 1,
  video_url: 'www.video.com',
  user_id: raj.id,
  recipe_id: roger_five.id
)
booking_ten = Booking.create!(
  date: Faker::Date.forward(days: rand(14..30)),
  start_time: Time.now,
  end_time: Time.now + 1,
  video_url: 'www.video.com',
  user_id: luis.id,
  recipe_id: jamal_one.id
)

puts "#{Booking.count} bookings created"
# -------- BOOKINGS END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --

# -------- CHEF REVIEWS START ----------------

puts 'creating chef reviews...'

ChefReview.create!(
  chef_id: slavo_chef.id,
  booking_id: booking_one.id,
  rating: 5,
  content: "It’s a great experience with this chef. They were very welcoming and charming. They are extremely knowledgeable and make great recommendations."
  )
ChefReview.create!(
  chef_id: slavo_chef.id,
  booking_id: booking_two.id,
  rating: 5,
  content: "What a kind and patient chef!"
  )
ChefReview.create!(
  chef_id: chaz_chef.id,
  booking_id: booking_seven.id,
  rating: 5,
  content: "Chaz is such an awesome dude! Super helpful and knowledgeable."
  )
ChefReview.create!(
  chef_id: jamal_chef.id,
  booking_id: booking_eight.id,
  rating: 4,
  content: "Wow I can't believe I was able to learn to make such a beautiful dish through Jamals help. Thank you!"
  )
ChefReview.create!(
  chef_id: roger_chef.id,
  booking_id: booking_nine.id,
  rating: 5,
  content: "Roger is very detailed and is great at getting you through difficult knife skills for his French dishes."
  )
ChefReview.create!(
  chef_id: jamal_chef.id,
  booking_id: booking_ten.id,
  rating: 3,
  content: "It was a nice class with Jamal but wish he would've explained some thigns a little better. Overall, not bad."
  )
puts "#{ChefReview.count} chef reviews created"
# -------- CHEF REVIEWS END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --

# -------- RECIPE REVIEWS START ----------------

puts 'creating recipe reviews...'
RecipeReview.create!(
  rating: rand(1...5),
  content: 'I have to say, I enjoyed every single bite of the meal',
  recipe_id: slavo_two.id,
  booking_id: booking_one.id
  )
RecipeReview.create!(
  rating: rand(1...5),
  content: 'Excellent food.',
  recipe_id: slavo_five.id,
  booking_id: booking_two.id
  )
RecipeReview.create!(
  rating: rand(1...5),
  content: 'Excellent food.',
  recipe_id: roger_two.id,
  booking_id: booking_three.id
  )
RecipeReview.create!(
  rating: rand(1...5),
  content: 'Excellent food.',
  recipe_id: samuel_one.id,
  booking_id: booking_four.id
  )
RecipeReview.create!(
  rating: rand(1...5),
  content: 'Excellent food.',
  recipe_id: slavo_four.id,
  booking_id: booking_five.id
  )
RecipeReview.create!(
  rating: rand(1...5),
  content: 'Excellent food.',
  recipe_id: bec_five.id,
  booking_id: booking_six.id
  )
RecipeReview.create!(
  rating: rand(1...5),
  content: 'Excellent food.',
  recipe_id: chaz_three.id,
  booking_id: booking_seven.id
  )
RecipeReview.create!(
  rating: rand(1...5),
  content: 'Excellent food.',
  recipe_id: jamal_five.id,
  booking_id: booking_eight.id
  )
RecipeReview.create!(
  rating: rand(1...5),
  content: 'Excellent food.',
  recipe_id: roger_five.id,
  booking_id: booking_nine.id
  )
RecipeReview.create!(
  rating: rand(1...5),
  content: 'Excellent food.',
  recipe_id: jamal_one.id,
  booking_id: booking_ten.id
  )
puts "#{RecipeReview.count} recipe reviews created"
# -------- RECIPE REVIEWS END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --

# # -------- CHATS START ------------------

# puts 'creating chats...'
# Chat.create!(
#   booking_id: Booking.first.id,
#   )
# Chat.create!(
#   booking_id: Booking.last.id,
#   )
# puts "#{Chat.count} chats created"
#  # -------- CHATS END ----------------

# # --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --

# # -------- MESSAGES START ----------------

# Message.create!(
#   chat_id: Chat.first.id,
#   content: "Hi chef, I am excited to get cooking with you soon!",
#   user_id: User.first.id
#   )
# Message.create!(
#   chat_id: Chat.last.id,
#   content: "It's nice to meet you chef. Can't wait to make your signature dish!",
#   user_id: User.last.id
#   )

# puts "#{Message.count} messages created"

puts "Seeding complete"
 # -------- MESSAGES END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --
