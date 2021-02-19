require "open-uri"

recipes = ['https://unsplash.com/photos/auIbTAcSH6E','https://unsplash.com/photos/pLKgCsBOiw4','https://unsplash.com/photos/XoByiBymX20','https://unsplash.com/photos/zcUgjyqEwe8','https://unsplash.com/photos/OFismyezPnY','https://unsplash.com/photos/jpkfc5_d-DI','https://unsplash.com/photos/awj7sRviVXo','https://unsplash.com/photos/IGfIGP5ONV0','https://unsplash.com/photos/w6ftFbPCs9I','https://unsplash.com/photos/fdlZBWIP0aM']

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
file = URI.open('https://unsplash.com/photos/C8Ta0gwPbQg')
user = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: Faker::Internet.email,
  password: 123456
  )
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!

file = URI.open('https://unsplash.com/photos/jzz_3jWMzHA')
user = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  email: Faker::Internet.email,
  password: 123456
  )
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user.save!
puts "#{User.count} users created"



puts ' creating chefs...'
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
  recipe.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
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
  recipe.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
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

puts ' creating chats...'
Chat.create!(
  booking_id: Booking.first.id,
  )
Chat.create!(
  booking_id: Booking.last.id,
  )
puts "#{Chat.count} chats created"

puts ' creating messages...'
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

