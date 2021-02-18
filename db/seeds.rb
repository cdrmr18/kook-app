
puts 'Deleting current seed...'

# User.delete_all
# Chef.delete_all
# Recipe.delete_all
# Booking.delete_all
# Chef_review.delete_all
# Recipe_review.delete_all
# Chat.delete_all
# Message.delete_all

puts 'Starting seed..'

puts 'creating users...'
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: 123456
    )
end
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
5.times do
  Recipe.create!(
    name: Faker::Food.dish,
    description: Faker::Food.description,
    ingredients: [[Faker::Food.measurement, Faker::Food.ingredient], [Faker::Food.measurement, Faker::Food.ingredient], [Faker::Food.measurement, Faker::Food.ingredient], [Faker::Food.measurement, Faker::Food.ingredient]],
    cuisine: 'Mexican',
    cook_time: rand(15..120),
    chef_id: Chef.first.id
    )
end

5.times do
  Recipe.create!(
    name: Faker::Food.dish,
    description: Faker::Food.description,
    ingredients: [[Faker::Food.measurement, Faker::Food.ingredient], [Faker::Food.measurement, Faker::Food.ingredient], [Faker::Food.measurement, Faker::Food.ingredient], [Faker::Food.measurement, Faker::Food.ingredient]],
    cuisine: "Italian",
    cook_time: rand(15..120),
    chef_id: Chef.last.id
    )
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

puts 'creating chefs...'
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

puts 'creating recipes...'
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
  user_id: Chat.first.booking_id
  )
Message.create!(
  chat_id: Chat.last.id,
  content: "It's nice to meet you chef. Can't wait to make your signature dish!",
  user_id: Chat.booking_id
  )

puts "#{Message.count} messages created"

puts "Seeding complete"

