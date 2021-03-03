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

file = URI.open('https://images.unsplash.com/photo-1577219491135-ce391730fb2c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Y2hlZnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
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
luis_chef = Chef.create!(
  cuisine: 'Balkan',
  user_id: luis.id,
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
  chef_id: chaz_chef.id,
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

puts "Creating ingredients & measurements"

# -------- MEASUREMETNS START ----------------
Measurement.create!(
  recipe_id: slavo_one.id,
  description: "600 g",
  ingredient: "finely minced beef"
)
Measurement.create!(
  recipe_id: slavo_one.id,
  description: "300g (10 oz)",
  ingredient: "finely minced lamb (or pork mince if you prefer)"
)
Measurement.create!(
  recipe_id: slavo_one.id,
  description: "3", 
  ingredient: "cloves of garlic (Minced)"
)
Measurement.create!(
  recipe_id: slavo_one.id,
  description: "1 teaspoon",
  ingredient: "fine salt"
)
Measurement.create!(
  recipe_id: slavo_one.id,
  description: "1 teaspoon",
  ingredient: "black pepper"
)
Measurement.create!(
  recipe_id: slavo_one.id,
  description: "",
  ingredient: "Slavo Bukich’s roast pork shoulder"
)
Measurement.create!(
  recipe_id: slavo_one.id,
  description: "",
  ingredient: "Turkish-style Flatbread"
)
Measurement.create!(
  recipe_id: slavo_one.id,
  description: "",
  ingredient: "Chopped raw onions"
)
Measurement.create!(
  recipe_id: slavo_one.id,
  description: "",
  ingredient: "Ajvar (see the notes for the recipe)"
)
# ------------- NEW RECIPE --------------- 
# 7 pound Pork Shoulder; Skin On Take Bone Out
# •	1/2 pound Bacon, apple smoked
# •	4 cups Kosher salt
# •	2 cups Sugar ; Light Brown or Regular
# •	1 cup Garlic ; chopped
# •	2 ea Onion
# •	2 tablespoon Paprika ; sweet or hot
# •	3 galons Water
# •	1 tablespoon Pepper Whole or Ground
# Measurement.create!(
#   recipe_id: ,
#   description: ,
#   ingredient:
#   )
# Measurement.create!(
#   recipe_id: ,
#   description: ,
#   ingredient:
#   )
# Measurement.create!(
#   recipe_id: ,
#   description: ,
#   ingredient:
#   )
# Measurement.create!(
#   recipe_id: ,
#   description: ,
#   ingredient:
#   )
# Measurement.create!(
#   recipe_id: ,
#   description: ,
#   ingredient:
#   )
# Measurement.create!(
#   recipe_id: ,
#   description: ,
#   ingredient:
#   )
# Measurement.create!(
#   recipe_id: ,
#   description: ,
#   ingredient:
#   )
# Measurement.create!(
#   recipe_id: ,
#   description: ,
#   ingredient:
#   )
# Measurement.create!(
#   recipe_id: ,
#   description: ,
#   ingredient:
#   )
# Measurement.create!(
#   recipe_id: ,
#   description: ,
#   ingredient:
#   )

# ------------- NEW RECIPE: Slavo Bukich’s Bosnian pot --------------- 

Measurement.create!(
  recipe_id: slavo_three.id,
  description: "1 kg",
  ingredient: "mixed meat (beef, pork, lamb)"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "2 dl",
  ingredient: "oil (or grease if preferred)" 
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "1",
  ingredient: "big onion"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "6 cloves",
  ingredient: "garlic"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "700 g",
  ingredient: "potato chopped to larger cubes"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "200 g",
  ingredient: "carrot largely chopped to rings"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "100 g",
  ingredient: "greens (parsley, parsnip, celery) finely chopped"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "150 g",
  ingredient: "roughly cut cabbage"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "100 g",
  ingredient: "fresh paprika (yellow, green, red)"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "100 g",
  ingredient: "peas"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "100 g",
  ingredient: "pods"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "100 g",
  ingredient: "okra (if it’s dry first you have to cook it and if it is fresh or frozen put it directly into pot)"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "150 g",
  ingredient: "tomato or a few tiny pieces"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "150 g",
  ingredient: "largely cut zucchini"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "2 dl",
  ingredient: "vine"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "2 litres",
  ingredient: "hot water"
)
Measurement.create!(
  recipe_id: slavo_three.id,
  description: "",
  ingredient: "Some salt and pepper"
)


# ------------- NEW RECIPE: Slavo Bukich’s Baked Beans --------------- 

Measurement.create!(
  recipe_id: slavo_four.id,
  description: "around 1lb",
  ingredient: "white beans"
)
Measurement.create!(
  recipe_id: slavo_four.id,
  description: "1/5 lbs.",
  ingredient: "onions"
)
Measurement.create!(
  recipe_id: slavo_four.id,
  description: "",
  ingredient: "meat of your choice – generally people use bacon or sausages"
)
Measurement.create!(
  recipe_id: slavo_four.id,
  description: "",
  ingredient: "garlic"
)
Measurement.create!(
  recipe_id: slavo_four.id,
  description: "",
  ingredient: "oil"
)
Measurement.create!(
  recipe_id: slavo_four.id,
  description: "3 spoons",
  ingredient: "flour and paprika powder mixture"
)
Measurement.create!(
  recipe_id: slavo_four.id,
  description: "",
  ingredient: "seasonings – salt, pepper, parsley"
)

# --------- NEW RECIPE: JAMAL AL TAMIMI – Middle Eastern Cuisine -----------
# --------- NEW RECIPE: JAMAL AL TAMIMI – hummus -----------
Measurement.create!(
  recipe_id: jamal_one.id,
  description: "400 g",
  ingredient: "can chickpeas, drained"
)
Measurement.create!(
  recipe_id: jamal_one.id,
  description: "80 ml",
  ingredient: "extra virgin olive oil" 
)
Measurement.create!(
  recipe_id: jamal_one.id,
  description: "1-2",
  ingredient: "fat garlic cloves, peeled and crushed"

)
Measurement.create!(
  recipe_id: jamal_one.id,
  description: "1",
  ingredient: "lemon, juiced then ½ zested"
)
Measurement.create!(
  recipe_id: jamal_one.id,
  description: "3 tbsp",
  ingredient: "tahini"
  
)
Measurement.create!(
  recipe_id: jamal_one.id,
  description: "",
  ingredient: "mixed crudités and toasted pitta bread, to serve (optional)"
)


# --------- NEW RECIPE: JAMAL AL TAMIMI – Tabbouleh -----------
Measurement.create!(
  recipe_id: jamal_two.id,
  description: "",
  ingredient: "Parsley (curly or flat-leaf)"
  
)
Measurement.create!(
  recipe_id: jamal_two.id,
  description: "",
  ingredient: "tomatoes"
)
Measurement.create!(
  recipe_id: jamal_two.id,
  description: "",
  ingredient: "scallions"
)
Measurement.create!(
  recipe_id: jamal_two.id,
  description: "",
  ingredient: "mint"
)
Measurement.create!(
  recipe_id: jamal_two.id,
  description: "",
  ingredient: "bulgar wheat (or quinoa)"
)
Measurement.create!(
  recipe_id: jamal_two.id,
  description: "",
  ingredient: "lemon"
)
Measurement.create!(
  recipe_id: jamal_two.id,
  description: "",
  ingredient: "olive oil"
)
Measurement.create!(
  recipe_id: jamal_two.id,
  description: "",
  ingredient: "salt"
)
Measurement.create!(
  recipe_id: jamal_two.id,
  description: "",
  ingredient: "cinnamon and allspice"
)


# --------- NEW RECIPE: JAMAL AL TAMIMI – Manakeesh -----------
Measurement.create!(
  recipe_id: jamal_three.id,
  description: "2 ¼ lb",
  ingredient: "flour"
)
Measurement.create!(
  recipe_id: jamal_three.id,
  description: "2 cups",
  ingredient: "warm water"
)
Measurement.create!(
  recipe_id: jamal_three.id,
  description: "",
  ingredient: "Fresh zaater oil"
)
Measurement.create!(
  recipe_id: jamal_three.id,
  description: "2 tbsp",
  ingredient: "dry yeast"
)
Measurement.create!(
  recipe_id: jamal_three.id,
  description: "4 tbsp",
  ingredient: "olive oil"
)
Measurement.create!(
  recipe_id: jamal_three.id,
  description: "1/3 cup",
  ingredient: "grated akawi cheese"
)
Measurement.create!(
  recipe_id: jamal_three.id,
  description: "1 tbsp",
  ingredient: "salt"
)


# --------- NEW RECIPE: JAMAL AL TAMIMI – Kambsa -----------
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "1 kg",
  ingredient: "chicken (cut into pieces)"
)
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "¼ ",
  ingredient: "cup vegetable oil"
)
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "2",
  ingredient: "sliced onion"
)
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "12 oz",
  ingredient: "tomato puree"
)
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "2 medium",
  ingredient: "chopped tomatoes"
)
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "4",
  ingredient: "chopped cloves of garlic"
)
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "2",
  ingredient: "grated carrot"
)
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "1",
  ingredient: "grated orange"
)
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "",
  ingredient: "4 cloves"
)
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "4",
  ingredient: "Cardamom"
)
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "3",
  ingredient: "Cinnamon sticks"
)
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "",
  ingredient: "Pepper and salt to taste"
)
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "1 kg",
  ingredient: "rice"
)
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "¼ cup",
  ingredient: "Raisins" 
)
Measurement.create!(
  recipe_id: jamal_four.id,
  description: "¼ cup",
  ingredient: "sliced almonds"
)

# --------- NEW RECIPE: JAMAL AL TAMIMI – Falafel -----------
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "1 lb",
  ingredient: "dry peeled fava beans"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "¾ lbs",
  ingredient: "dried chickpeas (aka Garbanzo beans)"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "1 bunch",
  ingredient: "Italian parsley (chop away the stems)"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "2 bunches",
  ingredient: "green cilantro (chop away the stems)"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "8-10 cloves",
  ingredient: "freshly peeled garlic, crushed"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "1",
  ingredient: "large red or yellow onion"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "1 bunch",
  ingredient: "green onions"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "2 table spoons",
  ingredient: "salt"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "A dash",
  ingredient: "black pepper"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "2 table spoons",
  ingredient: "flour"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "1 teaspoon",
  ingredient: "baking soda"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "1 teaspoon",
  ingredient: "cumin"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "3 teaspoons",
  ingredient: "Coriander"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "",
  ingredient: "Falafel Tahini Sauce Ingredients"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "1 dash",
  ingredient: "red chilli pepper (optional, if spicy falafel is desired)"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "2 table spoons",
  ingredient: "Tahini Paste"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "1 cup",
  ingredient: "freshly squeezed Lemon Juice"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "3 cloves",
  ingredient: "garlic, crushed"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "",
  ingredient: "a dash of salt"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "",
  ingredient: "(Optional) Falafel Serving Sides"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "",
  ingredient: "Salty Lebanese Pickles (cucumbers, turnips, pickled chilli peppers)" 
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "",
  ingredient: "Tomatoes"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "",
  ingredient: "Chopped fresh Italian parsley"
)
Measurement.create!(
  recipe_id: jamal_five.id,
  description: "",
  ingredient: "Pita bread"
)

# --------- NEW RECIPE: Samuel De Grasses Moroccan chicken rfissa -----------

# 1.  Samuel De Grasses Moroccan chicken rfissa
# For the Chicken:
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '1',
  ingredient: 'chicken (quartered or left whole)'
)
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '2 to 3',
  ingredient: 'large onions (thinly sliced)'
)
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '1/3',
  ingredient: 'cup olive oil'
)
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '2',
  ingredient: 'teaspoons salt'
)
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '2',
  ingredient: 'teaspoons blackpepper'
)
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '1',
  ingredient: 'tablespoon ginger'
)
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '2',
  ingredient: 'teaspoons ras el hanout'
)
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '1',
  ingredient: 'teaspoon tumeric'
)
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '1',
  ingredient: 'teaspoon saffron threads (heated gently and then crumbled)'
)
# For the Lentils:
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '1/2',
  ingredient: 'cup lentils (uncooked)'
)
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '2',
  ingredient: 'tablespoons fenugreek seeds (soaked overnight and drained)'
)
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '1',
  ingredient: 'teaspoon saffron threads (heated gently and then crumbled)'
)
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '1',
  ingredient: 'small bunch cilantro (finely chopped)'
)
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '1',
  ingredient: 'small bunch parsley (finely chopped)'
)
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '3',
  ingredient: 'cups water'
)
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '1',
  ingredient: 'teaspoon smen (Moroccan preserved butter)'
)
# For the Msemen or Trid
Measurement.create!(
  recipe_id: samuel_one.id,
  description: '1 to 1 1/2',
  ingredient: 'batches msemen (or trid, cooked)'
)
# 2.  Samuel De Grasses Moroccan meatball soup

Measurement.create!(
  recipe_id: samuel_two.id,
  description: '1/2',
  ingredient: 'cup (40g) flaked almonds2 1/2 tbs olive oil'
)
Measurement.create!(
  recipe_id: samuel_two.id,
  description: '1',
  ingredient: 'onion, finely chopped'
)
Measurement.create!(
  recipe_id: samuel_two.id,
  description: '2',
  ingredient: 'garlic cloves, crushed'
)
Measurement.create!(
  recipe_id: samuel_two.id,
  description: '1',
  ingredient: 'teaspoon each ground cinnamon and ground ginger'
)
Measurement.create!(
  recipe_id: samuel_two.id,
  description: '2',
  ingredient: 'teaspoons ground cumin'
)
Measurement.create!(
  recipe_id: samuel_two.id,
  description: '1/2',
  ingredient: 'bunch coriander, leaves picked, stems chopped'
)
Measurement.create!(
  recipe_id: samuel_two.id,
  description: '1/2',
  ingredient: 'teaspoon dried chilli flakes'
)
Measurement.create!(
  recipe_id: samuel_two.id,
  description: '2',
  ingredient: 'carrots, cut into 1cm pieces'
)
Measurement.create!(
  recipe_id: samuel_two.id,
  description: '2',
  ingredient: 'zucchinis, cut into 1cm pieces'
)
Measurement.create!(
  recipe_id: samuel_two.id,
  description: '4',
  ingredient: 'cups (1L) chicken stock or vegetable stock'
)
Measurement.create!(
  recipe_id: samuel_two.id,
  description: '500g',
  ingredient: 'beef mince'
)
Measurement.create!(
  recipe_id: samuel_two.id,
  description: '1',
  ingredient: 'egg, lightly beaten'
)
Measurement.create!(
  recipe_id: samuel_two.id,
  description: '2/3',
  ingredient: 'cup (50g) fresh breadcrumbs'
)
Measurement.create!(
  recipe_id: samuel_two.id,
  description: '1',
  ingredient: 'cup (200g) pearl (Israeli) couscous'
)

# 3.  Samuel De Grasses aromatic lamb with dates

Measurement.create!(
  recipe_id: samuel_three.id,
  description: '1',
  ingredient: 'tablespoon olive oil'
)
Measurement.create!(
  recipe_id: samuel_three.id,
  description: '1',
  ingredient: 'onion, finely chopped'
)
Measurement.create!(
  recipe_id: samuel_three.id,
  description: '500g',
  ingredient: 'diced boneless lean lamb , preferably from the leg'
)
Measurement.create!(
  recipe_id: samuel_three.id,
  description: '300g',
  ingredient: 'sweet potatoes , cut into small chunks'
)
Measurement.create!(
  recipe_id: samuel_three.id,
  description: '2',
  ingredient: 'teaspoons ground coriander'
)
Measurement.create!(
  recipe_id: samuel_three.id,
  description: '2',
  ingredient: 'teaspoons ground coriander'
)
Measurement.create!(
  recipe_id: samuel_three.id,
  description: '1',
  ingredient: 'tablespoon tomato purée'
)
Measurement.create!(
  recipe_id: samuel_three.id,
  description: '50g',
  ingredient: 'pitted dates'
)
Measurement.create!(
  recipe_id: samuel_three.id,
  description: '2',
  ingredient: 'tablespoons coriander , roughly chopped'
)

# 4.  Samuel De Grasses Morrocan roast lamb

Measurement.create!(
  recipe_id: samuel_four.id,
  description: '1/2',
  ingredient: 'leg of lamb , around 800g'
)
Measurement.create!(
  recipe_id: samuel_four.id,
  description: '2',
  ingredient: 'red onions , cut into wedges'
)
Measurement.create!(
  recipe_id: samuel_four.id,
  description: '1',
  ingredient: 'butternut squash , skin left on, cut into wedges'
  )
Measurement.create!(
  recipe_id: samuel_four.id,
  description: '1',
  ingredient: 'celeriac, peeled and cut into wedges'
)
Measurement.create!(
  recipe_id: samuel_four.id,
  description: '2 1/2',
  ingredient: 'tablespoons cold pressed rapeseed oil'
)
Measurement.create!(
  recipe_id: samuel_four.id,
  description: '2',
  ingredient: 'tablespoons ras el hanout'
)
Measurement.create!(
  recipe_id: samuel_four.id,
  description: '8',
  ingredient: 'garlic cloves , skin on'
)
Measurement.create!(
  recipe_id: samuel_four.id,
  description: '1',
  ingredient: 'small bunch coriander'
)
Measurement.create!(
  recipe_id: samuel_four.id,
  description: '1',
  ingredient: 'teaspoon cumin seeds'
)
Measurement.create!(
  recipe_id: samuel_four.id,
  description: '1',
  ingredient: 'lemon , zested and juiced'
)
Measurement.create!(
  recipe_id: samuel_four.id,
  description: '1/2',
  ingredient: 'green chilli , deseeded'
)

# 5.  Samuel De Grasses chicken tagine

Measurement.create!(
  recipe_id: samuel_five.id,
  description: '2',
  ingredient: 'tablespoons olive oil'
)
Measurement.create!(
  recipe_id: samuel_five.id,
  description: '8',
  ingredient: 'skinless boneless chicken thighs, halved if large'
)
Measurement.create!(
  recipe_id: samuel_five.id,
  description: '1',
  ingredient: 'onion, chopped'
)
Measurement.create!(
  recipe_id: samuel_five.id,
  description: '2',
  ingredient: 'teaspoons grated fresh root ginger'
)
Measurement.create!(
  recipe_id: samuel_five.id,
  description: 'pinch',
  ingredient: 'saffron or tumeric'
)
Measurement.create!(
  recipe_id: samuel_five.id,
  description: '1',
  ingredient: 'tablespoon honey'
)
Measurement.create!(
  recipe_id: samuel_five.id,
  description: '400g',
  ingredient: 'carrot, cut into sticks'
)
Measurement.create!(
  recipe_id: samuel_five.id,
  description: 'small',
  ingredient: 'bunch parsley, roughly chopped'
)
Measurement.create!(
  recipe_id: samuel_five.id,
  description: 'lemon wedges',
  ingredient: 'to serve'
)

# 6.  Samuel De Grasses Mixed-grain paella with lamb

Measurement.create!(
  recipe_id: samuel_six.id,
  description: '2',
  ingredient: 'tablespoons extra virgin olive oil'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: '12',
  ingredient: 'lamb cutlets'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: '1',
  ingredient: 'large red onion, thinly sliced'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: '3',
  ingredient: 'garlic cloves, chopped'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: '1',
  ingredient: 'tablespoon ras el hanout or Moroccan spice mix'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: '140g',
  ingredient: '(2/3 cup) brown basmati rice'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: '75g',
  ingredient: '(1/3 cup) pearl barley'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: '70g',
  ingredient: '(1/3 cup) quinoa or burghul'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: '125ml',
  ingredient: '(1/2 cup) tomato passata'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: '1',
  ingredient: 'tablespoon harissa paste or hot chilli sauce, or to taste'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: '1L',
  ingredient: '(4 cups) Massel chicken style liquid stock'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: '80g',
  ingredient: '(1/2 cup) currants'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: '1 1/2',
  ingredient: 'tablespoons chopped fresh mint, plus extra leaves, to serve'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: '1 1/2',
  ingredient: 'tablespoons chopped fresh dill, plus extra leaves, to serve'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: 'tub',
  ingredient: 'Greek-style yoghurt, to serve'
)
Measurement.create!(
  recipe_id: samuel_six.id,
  description: 'handfull',
  ingredient: 'Pomegranate seeds, to serve (optional)'
)

# -------- Zuchini Fritters ----------------
Measurement.create!(
  recipe_id: chaz_one.id,
  description: "2",
  ingredient: "zuchinni"
  )

Measurement.create!(
  recipe_id: chaz_one.id,
  description: "1",
  ingredient: "small carrot"
  )

Measurement.create!(
  recipe_id: chaz_one.id,
  description: "1",
  ingredient: "small spanish onion"
  )

Measurement.create!(
  recipe_id: chaz_one.id,
  description: "2",
  ingredient: "tablespoon toasted cumin seeds"
  )
    
Measurement.create!(
  recipe_id: chaz_one.id,
  description: "3",
  ingredient: "eggs seperated"
  )
    

Measurement.create!(
  recipe_id: chaz_one.id,
  description: "50ml",
  ingredient: "olive oil"
)
  

# -------- Hiramasa Salmon ----------------

Measurement.create!(
  recipe_id: chaz_two.id,
  description: "1",
  ingredient: "salmon fillet"
)

Measurement.create!(
  recipe_id: chaz_two.id,
  description: "1",
  ingredient: "mango"
)

Measurement.create!(
  recipe_id: chaz_two.id,
  description: "bunch",
  ingredient: "baby red radish"
)

Measurement.create!(
  recipe_id: chaz_two.id,
  description: "1",
  ingredient: "lesbian cucumber"
)

Measurement.create!(
  recipe_id: chaz_two.id,
  description: "1",
  ingredient: "avocado"
)


Measurement.create!(
  recipe_id: chaz_two.id,
  description: "1",
  ingredient: "lime"
)

Measurement.create!(
  recipe_id: chaz_two.id,
  description: "bunch",
  ingredient: "green shallots"
)

Measurement.create!(
  recipe_id: chaz_two.id,
  description: "150ml",
  ingredient: "grape seed oil"
)

Measurement.create!(
  recipe_id: chaz_two.id,
  description: "375ml",
  ingredient: "kewpie mayonnaise"
)

Measurement.create!(
  recipe_id: chaz_two.id,
  description: "1",
  ingredient: "micro coriander punnet"
)

Measurement.create!(
  recipe_id: chaz_two.id,
  description: "1",
  ingredient: "lemon"
)

Measurement.create!(
  recipe_id: chaz_two.id,
  description: "1",
  ingredient: "blow torch"
)

Measurement.create!(
  recipe_id: chaz_two.id,
  description: "1",
  ingredient: "food processor"
)


# -------- Baked Passionfruit Tarts ----------------

Measurement.create!(
  recipe_id: chaz_three.id,
  description: "3",
  ingredient: "eggs"
)

Measurement.create!(
  recipe_id: chaz_three.id,
  description: "1",
  ingredient: "egg yolk"
)

Measurement.create!(
  recipe_id: chaz_three.id,
  description: "150g",
  ingredient: "caster sugar"
)


Measurement.create!(
  recipe_id: chaz_three.id,
  description: "150ml",
  ingredient: "pouring cream"
)

Measurement.create!(
  recipe_id: chaz_three.id,
  description: "200ml",
  ingredient: "strained passionfruit pulp"
)

Measurement.create!(
  recipe_id: chaz_three.id,
  description: "1",
  ingredient: "sweet pastry"
)


Measurement.create!(
  recipe_id: chaz_three.id,
  description: "225g",
  ingredient: "unsalted butter"
)


Measurement.create!(
  recipe_id: chaz_three.id,
  description: "100g",
  ingredient: "icing sugar"
)


Measurement.create!(
  recipe_id: chaz_three.id,
  description: "375g",
  ingredient: "plain flour"
)

# -------- Mushroom and Chestnut risotto ----------------

Measurement.create!(
  recipe_id: chaz_four.id,
  description: "750g",
  ingredient: "risotto"
)

Measurement.create!(
  recipe_id: chaz_four.id,
  description: "3.5L",
  ingredient: "chicken stock"
)

Measurement.create!(
  recipe_id: chaz_four.id,
  description: "200g",
  ingredient: "peeled chestnuts"
)

Measurement.create!(
  recipe_id: chaz_four.id,
  description: "150ml",
  ingredient: "extra virgin olive oil"
)

Measurement.create!(
  recipe_id: chaz_four.id,
  description: "320g",
  ingredient: "butter - coarsely chopped"
)

Measurement.create!(
  recipe_id: chaz_four.id,
  description: "half",
  ingredient: "small onion finely chopped"
)

Measurement.create!(
  recipe_id: chaz_four.id,
  description: "1",
  ingredient: "clove garlic finely chopped"
)


Measurement.create!(
  recipe_id: chaz_four.id,
  description: "750g",
  ingredient: "carnaroli rice"
)


Measurement.create!(
  recipe_id: chaz_four.id,
  description: "100g",
  ingredient: "finely grated Parmigiano-Reggiano"
)


Measurement.create!(
  recipe_id: chaz_four.id,
  description: "150g",
  ingredient: "small shiitake mushrooms, stems trimmed"
)


Measurement.create!(
  recipe_id: chaz_four.id,
  description: "150g",
  ingredient: "small Swiss brown mushrooms, stems trimmed"
)


Measurement.create!(
  recipe_id: chaz_four.id,
  description: "100g",
  ingredient: "small pine mushrooms or wood blewits when available, stems trimmed
  "
)


Measurement.create!(
  recipe_id: chaz_four.id,
  description: "150g",
  ingredient: "baby spinach leaves, stalks trimmed"
)



# -------- Glazed Duck Drumsticks with chestnut puree baby fennel ----------------

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "4",
  ingredient: "duck drumsticks"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "1 tablespoon",
  ingredient: "corriander, fennel and black peppercorn seeds"
)


Measurement.create!(
  recipe_id: chaz_five.id,
  description: "1",
  ingredient: "star anise"
)


Measurement.create!(
  recipe_id: chaz_five.id,
  description: "1",
  ingredient: "cinnamon quill"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "4",
  ingredient: "garlic cloves"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "1",
  ingredient: "bunch of thyme"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "1",
  ingredient: "lemon"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "150g",
  ingredient: "baby fennel"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "250ml",
  ingredient: "milk"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "50g",
  ingredient: "butter"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "2kg",
  ingredient: "duck bones"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "300ml",
  ingredient: "red wine"
)


Measurement.create!(
  recipe_id: chaz_five.id,
  description: "2L",
  ingredient: "water"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "2",
  ingredient: "roasted carrots"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "1",
  ingredient: "onion"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "2",
  ingredient: "leeks"
)


Measurement.create!(
  recipe_id: chaz_five.id,
  description: "3",
  ingredient: "sprigs thyme"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "3",
  ingredient: "bay leaves"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "3",
  ingredient: "pods of cardomom"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "1",
  ingredient: "plum"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "30g",
  ingredient: "raw sugar"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "300g",
  ingredient: "raw chestnuts"
)

Measurement.create!(
  recipe_id: chaz_five.id,
  description: "170ml",
  ingredient: "double cream"
)


# --------Lamb Karaage Sliders with Wasabi Mayo ----------------

Measurement.create!(
  recipe_id: chaz_six.id,
  description: "1",
  ingredient: "lamb backstrap s.create! removed"
)

Measurement.create!(
  recipe_id: chaz_six.id,
  description: "1 tablespoon",
  ingredient: "fresh ginger grated"
)

Measurement.create!(
  recipe_id: chaz_six.id,
  description: "1",
  ingredient: "garlic clove crushed"
)


Measurement.create!(
  recipe_id: chaz_six.id,
  description: "2 tablespoons",
  ingredient: "soy sauce"
)

Measurement.create!(
  recipe_id: chaz_six.id,
  description: "1 tablespoon",
  ingredient: "sake"
)

Measurement.create!(
  recipe_id: chaz_six.id,
  description: "2 teaspoon",
  ingredient: "sugar"
)

Measurement.create!(
  recipe_id: chaz_six.id,
  description: "1 cup",
  ingredient: "potato starch"
)


Measurement.create!(
  recipe_id: chaz_six.id,
  description: "enough",
  ingredient: "vegetable oil for deep frying"
)


Measurement.create!(
  recipe_id: chaz_six.id,
  description: "1 cup",
  ingredient: "fine shredded white cabbage"
)


Measurement.create!(
  recipe_id: chaz_six.id,
  description: "1 cup",
  ingredient: "fine shredded purple cabbage"
)

Measurement.create!(
  recipe_id: chaz_six.id,
  description: "2",
  ingredient: "shallots finely sliced"
)

Measurement.create!(
  recipe_id: chaz_six.id,
  description: "1 tablespoon",
  ingredient: "wasabi paste, use to taste"
)

Measurement.create!(
  recipe_id: chaz_six.id,
  description: "1 cup",
  ingredient: "mayonnaise"
)


Measurement.create!(
  recipe_id: chaz_six.id,
  description: "1",
  ingredient: "lime juiced"
)

Measurement.create!(
  recipe_id: chaz_six.id,
  description: "to taste",
  ingredient: "salt"
)

Measurement.create!(
  recipe_id: chaz_six.id,
  description: "2",
  ingredient: "radish finely sliced"
)

Measurement.create!(
  recipe_id: chaz_six.id,
  description: "6",
  ingredient: "slider buns cut in half"
)

# -------- MEASUREMETNS END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --

# -------- BOOKINGS START ----------------
   #  kathy bookings
puts 'creating bookings...'
booking_one = Booking.create!(
  date: Faker::Date.forward(days: 14),
  start_time: Time.now + 1,
  end_time: Time.now + 2,
  video_url: 'www.video.com',
  user_id: kathy.id,
  recipe_id: slavo_two.id
  )
booking_two = Booking.create!(
  date: Faker::Date.backward(days: 7),
  start_time: Time.now,
  end_time: Time.now + 1,
  video_url: 'www.video.com',
  user_id: kathy.id,
  recipe_id: samuel_four.id
)
   # dragan bookings
booking_three = Booking.create!(
date: Faker::Date.forward(days: 10),
start_time: Time.now + 4,
end_time: Time.now + 5,
video_url: 'www.video.com',
user_id: dragan.id,
recipe_id: roger_two.id
)
booking_four = Booking.create!(
  date: Faker::Date.backward(days: 20),
  start_time: Time.now - 4,
  end_time: Time.now - 3,
  video_url: 'www.video.com',
  user_id: dragan.id,
  recipe_id: samuel_one.id
)
booking_five = Booking.create!(
date: Faker::Date.forward(days: 8),
start_time: Time.now - 2 ,
end_time: Time.now - 1,
video_url: 'www.video.com',
user_id: dragan.id,
recipe_id: slavo_four.id
)
booking_six = Booking.create!(
  date: Faker::Date.backward(days: 5),
  start_time: Time.now,
  end_time: Time.now + 1,
  video_url: 'www.video.com',
  user_id: dragan.id,
  recipe_id: bec_five.id
)
booking_seven = Booking.create!(
  date: Faker::Date.forward(days: 25),
  start_time: Time.now,
  end_time: Time.now + 1,
  video_url: 'www.video.com',
  user_id: bec.id,
  recipe_id: chaz_three.id
)
booking_eight = Booking.create!(
  date: Faker::Date.backward(days: 2),
  start_time: Time.now,
  end_time: Time.now + 1,
  video_url: 'www.video.com',
  user_id: roger.id,
  recipe_id: jamal_five.id
)
booking_nine = Booking.create!(
  date: Faker::Date.backward(days: 25),
  start_time: Time.now,
  end_time: Time.now + 1,
  video_url: 'www.video.com',
  user_id: raj.id,
  recipe_id: roger_five.id
)
booking_ten = Booking.create!(
  date: Faker::Date.backward(days: 3),
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
  content: "It was a great experience with this chef. They were very welcoming and charming. They are extremely knowledgeable and make great recommendations."
  )
ChefReview.create!(
  chef_id: samuel_chef.id,
  booking_id: booking_two.id,
  rating: 5,
  content: "What a kind and patient chef!"
  )
ChefReview.create!(
  chef_id: chaz_chef.id,
  booking_id: booking_seven.id,
  rating: 5,
  content: "Chaz is such an awesome chef! Super helpful and knowledgeable."
  )
ChefReview.create!(
  chef_id: jamal_chef.id,
  booking_id: booking_eight.id,
  rating: 4,
  content: "Wow I can't believe I was able to learn to make such a beautiful dish through Jamal's help. Thank you!"
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
  content: "It was a nice class with Jamal but wish he would've explained some of the difficult techniques a bit better. Overall, not bad."
  )
puts "#{ChefReview.count} chef reviews created"
# -------- CHEF REVIEWS END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --

# -------- RECIPE REVIEWS START ----------------

puts 'creating recipe reviews...'
RecipeReview.create!(
  rating: 5,
  content: 'I have to say, I enjoyed every single bite of the meal',
  recipe_id: slavo_two.id,
  booking_id: booking_one.id
  )
RecipeReview.create!(
  rating: 4,
  content: 'Excellent food.',
  recipe_id: samuel_four.id,
  booking_id: booking_two.id
  )
RecipeReview.create!(
  rating: 4,
  content: 'So glad I tried this wonder French dish. Quite delicious.',
  recipe_id: roger_two.id,
  booking_id: booking_three.id
  )
RecipeReview.create!(
  rating: 2,
  content: 'It looked good but wasn\'t to my liking.',
  recipe_id: samuel_one.id,
  booking_id: booking_four.id
  )
RecipeReview.create!(
  rating: 2,
  content: 'It tasted nice but may need to add veggies to feel less guilty about eating it.',
  recipe_id: slavo_four.id,
  booking_id: booking_five.id
  )
RecipeReview.create!(
  rating: 5,
  content: 'Such a fun and moutwatering dish. So glad I tried it!',
  recipe_id: bec_five.id,
  booking_id: booking_six.id
  )
RecipeReview.create!(
  rating: 4,
  content: 'I just absolutely enjoyed making and eating this dish!',
  recipe_id: chaz_three.id,
  booking_id: booking_seven.id
  )
RecipeReview.create!(
  rating: 3,
  content: 'This dish was not easy to make but it was tasty.',
  recipe_id: jamal_five.id,
  booking_id: booking_eight.id
  )
RecipeReview.create!(
  rating: 4,
  content: 'I will defintely try this dish again on my own. It\'s delicious and fun to make.',
  recipe_id: roger_five.id,
  booking_id: booking_nine.id
  )
RecipeReview.create!(
  rating: 5,
  content: 'Wow! So glad I tried this because at this point I want to make it every day. Very nice recipe Chef Jamal.',
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
