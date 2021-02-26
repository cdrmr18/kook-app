require "open-uri"

recipes = ['https://images.unsplash.com/photo-1432139509613-5c4255815697?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1532&q=80', 'https://images.unsplash.com/photo-1481070555726-e2fe8357725c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80', 'https://images.unsplash.com/photo-1529042410759-befb1204b468?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1533&q=80', 'https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80','https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1534&q=80', 'https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1534&q=80', 'https://images.unsplash.com/photo-1476718406336-bb5a9690ee2a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1534&q=80', 'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1553&q=80', 'https://images.unsplash.com/photo-1432139555190-58524dae6a55?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80', 'https://images.unsplash.com/photo-1548943487-a2e4e43b4853?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80']

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
file = URI.open('https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80')
kathy = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: kathy@mymail.com,
  password: 123456
  )
kathy.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
kathy.save!

file = URI.open('https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80')
raj = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: raj@mymail.com,
  password: 123456
  )
raj.photo.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
raj.save!


file = URI.open('https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80')
luis = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: luis@mymail.com,
  password: 123456
  )
luis.photo.attach(io: file, filename: 'nes2.png', content_type: 'image/png')
luis.save!

file = URI.open('https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80')
dragan = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: dragan@mymail.com,
  password: 123456
  )
dragan.photo.attach(io: file, filename: 'nes3.png', content_type: 'image/png')
dragan.save!

file = URI.open('https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
bec = User.new(
  first_name: "Bec",
  last_name: "Brown",
  username: Faker::Internet.username,
  email: bec@mymail.com,
  password: 123456
  )
bec.photo.attach(io: file, filename: 'nes4.png', content_type: 'image/png')
bec.save!

file = URI.open('https://images.unsplash.com/photo-1612282131240-6e878907d0f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1308&q=80')
chaz = User.new(
  first_name: "Chaz",
  last_name: "James",
  username: Faker::Internet.username,
  email: chaz@mymail.com,
  password: 123456
  )
chaz.photo.attach(io: file, filename: 'nes5.png', content_type: 'image/png')
chaz.save!

file = URI.open('https://images.unsplash.com/photo-1595273670150-bd0c3c392e46?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fGNoZWZ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
jamal = User.new(
  first_name: "Jamal",
  last_name: "Al Tamimi",
  username: Faker::Internet.username,
  email: Jamal@mymail.com,
  password: 123456
  )
jamal.photo.attach(io: file, filename: 'nes6.png', content_type: 'image/png')
jamal.save!

file = URI.open('https://images.unsplash.com/photo-1612282131240-6e878907d0f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1308&q=80')
roger = User.new(
  first_name: "Roger",
  last_name: "D’Angeline",
  username: Faker::Internet.username,
  email: roger@mymail.com,
  password: 123456
  )
roger.photo.attach(io: file, filename: 'nes6.png', content_type: 'image/png')
roger.save!

puts "#{User.count} users created"

file = URI.open('https://images.unsplash.com/photo-1519164497992-65f6b58a2981?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjl8fGFmcmljYW4lMjBjaGVmfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
samuel = User.new(
  first_name: "Samuel",
  last_name: "De Grasse",
  username: Faker::Internet.username,
  email: samuel@mymail.com,
  password: 123456
  )
samuel.photo.attach(io: file, filename: 'nes7.png', content_type: 'image/png')
samuel.save!


file = URI.open('https://images.unsplash.com/photo-1592332297790-c7c27c38ecb0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8cnVzc2lhbiUyMGNoZWZ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
slavo = User.new(
  first_name: "Slavo",
  last_name: "Bukich",
  username: Faker::Internet.username,
  email: slavo@mymail.com,
  password: 123456
  )
slavo.photo.attach(io: file, filename: 'nes8.png', content_type: 'image/png')
slavo.save!

puts "#{User.count} users created"

 # -------- USERS  END ----------------


# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --


# -------- CHEFS START ----------------
puts 'creating chefs...'
Chef.create!(
  cuisine: 'Thai',
  user_id: bec.id,
  )

Chef.create!(
  cuisine: 'Modern Australian',
  user_id: chaz.id,
  )
Chef.create!(
  cuisine: 'Middle Eastern',
  user_id: jamal.id,
  )
Chef.create!(
  cuisine: 'French',
  user_id: roger.id,
  )
Chef.create!(
  cuisine: 'North African',
  user_id: samuel.id,
  )
Chef.create!(
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
  chef_id: bec.id,
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
  chef_id: bec.id,
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
  chef_id: bec.id,
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
  chef_id: bec.id,
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
  chef_id: bec.id,
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
  chef_id: bec.id,
  price: rand(30..75)
  )
bec_six.photo.attach(io: file, filename: "nes14.png", content_type: 'image/png')
bec_six.save!

   # chef chz recipes
file = URI.open('https://images.unsplash.com/photo-1514944288352-fffac99f0bdf?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJhd25zfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
bec_one = Recipe.new(
  name: 'Prawns with Sweet Chilli Sauce',
  description: Faker::Food.description,
  cuisine: 'Thai',
  cook_time: rand(30..90),
  chef_id: bec.id,
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
  chef_id: bec.id,
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
  chef_id: bec.id,
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
  chef_id: bec.id,
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
  chef_id: bec.id,
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
  chef_id: bec.id,
  price: rand(30..75)
  )
bec_six.photo.attach(io: file, filename: "nes14.png", content_type: 'image/png')
bec_six.save!

puts "#{Recipe.count} recipes created"

# -------- RECIPES END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --


# -------- INGREDIENTS START ----------------



# -------- INGREDIENTS END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --

# -------- BOOKINGS START ----------------

puts 'creating bookings...'
Booking.create!(
  date: Date.today,
  start_time: Time.now,
  end_time: Time.now,
  video_url: 'www.video.com',
  user_id: User.first.id,
  recipe_id: Recipe.first.id
  )
Booking.create!(
  date: Date.today,
  start_time: Time.now,
  end_time: Time.now,
  video_url: 'www.video.com',
  user_id: User.last.id,
  recipe_id: Recipe.last.id
)
puts "#{Booking.count} bookings created"
# -------- BOOKINGS END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --

# -------- CHEF REVIEWS START ----------------

puts 'creating chef reviews...'
ChefReview.create!(
  chef_id: Chef.first.id,
  booking_id: Booking.first.id,
  rating: rand(1...5),
  content: "It’s a great experience with this chef. They were very welcoming and charming. They are extremely knowledgeable and make great recommendations."
  )
ChefReview.create!(
  chef_id: Chef.last.id,
  booking_id: Booking.last.id,
  rating: rand(1...5),
  content: "What a kind a patient chef!"
  )
puts "#{ChefReview.count} chef reviews created"
# -------- CHEF REVIEWS END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --

# -------- RECIPE REVIEWS START ----------------

puts 'creating recipe reviews...'
RecipeReview.create!(
  rating: rand(1...5),
  content: 'I have to say, I enjoyed every single bite of the meal',
  recipe_id: Booking.last.recipe_id,
  booking_id: Booking.last.id
  )
RecipeReview.create!(
  rating: rand(1...5),
  content: 'Excellent food.',
  recipe_id: Booking.first.recipe_id,
  booking_id: Booking.first.id
  )
puts "#{RecipeReview.count} recipe reviews created"
# -------- RECIPE REVIEWS END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --

# -------- CHATS START ------------------

puts 'creating chats...'
Chat.create!(
  booking_id: Booking.first.id,
  )
Chat.create!(
  booking_id: Booking.last.id,
  )
puts "#{Chat.count} chats created"
 # -------- CHATS END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --

# -------- MESSAGES START ----------------

Message.create!(
  chat_id: Chat.first.id,
  content: "Hi chef, I am excited to get cooking with you soon!",
  user_id: User.first.id
  )
Message.create!(
  chat_id: Chat.last.id,
  content: "It's nice to meet you chef. Can't wait to make your signature dish!",
  user_id: User.last.id
  )

puts "#{Message.count} messages created"

puts "Seeding complete"
 # -------- MESSAGES END ----------------

# --- ---- --- -- --- --- -- -- --- -- -- -- -- -- -- -- -- -- --- -- -- -- -- -- --
