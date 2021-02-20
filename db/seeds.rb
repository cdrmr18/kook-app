require "open-uri"

recipes = ['https://images.unsplash.com/photo-1432139509613-5c4255815697?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1532&q=80', 'https://images.unsplash.com/photo-1481070555726-e2fe8357725c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80', 'https://images.unsplash.com/photo-1529042410759-befb1204b468?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1533&q=80', 'https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80','https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1534&q=80', 'https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1534&q=80', 'https://images.unsplash.com/photo-1476718406336-bb5a9690ee2a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1534&q=80', 'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1553&q=80', 'https://images.unsplash.com/photo-1432139555190-58524dae6a55?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80', 'https://images.unsplash.com/photo-1548943487-a2e4e43b4853?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80']

puts 'Deleting current seed...'

ChefReview.delete_all
RecipeReview.delete_all
Message.delete_all
Chat.delete_all
Booking.delete_all
Recipe.delete_all
Chef.delete_all
User.delete_all

puts 'Starting seed..'


puts 'creating users...'
file = URI.open('https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80')
user = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: Faker::Internet.email,
  password: 123456
  )
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

file = URI.open('https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80')
user = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: Faker::Internet.email,
  password: 123456
  )
user.photo.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
user.save!
puts "#{User.count} users created"



puts 'creating chefs...'
Chef.create!(
  cuisine: 'Mexican',
  user_id: User.first.id,
  )

Chef.create!(
  cuisine: 'Italian',
  user_id: User.last.id,
  )
puts "#{Chef.count} chefs created"



puts 'creating recipes...'
5.times do |idx|
  recipe_url = recipes[idx]
  file = URI.open(recipe_url)
  recipe = Recipe.new(
    name: Faker::Food.dish,
    description: Faker::Food.description,
    ingredients: Faker::Food.ingredient,
    cuisine: 'Mexican',
    cook_time: rand(15..120),
    chef_id: Chef.first.id,
    price: Faker::Number.decimal(l_digits: 2)
    )
  recipe.photos.attach(io: file, filename: "nes#{idx}.png", content_type: 'image/png')
  recipe.save!
end

5.times do |idx|
  recipe_url = recipes[idx+5]
  file = URI.open(recipe_url)
  recipe = Recipe.new(
    name: Faker::Food.dish,
    description: Faker::Food.description,
    ingredients: Faker::Food.ingredient,
    cuisine: "Italian",
    cook_time: rand(15..120),
    chef_id: Chef.last.id,
    price: Faker::Number.decimal(l_digits: 2)
    )
  recipe.photos.attach(io: file, filename: "nes#{idx}.png", content_type: 'image/png')
  recipe.save!
end
puts "#{Recipe.count} recipes created"

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

puts 'creating chats...'
Chat.create!(
  booking_id: Booking.first.id,
  )
Chat.create!(
  booking_id: Booking.last.id,
  )
puts "#{Chat.count} chats created"

puts 'creating messages...'
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

