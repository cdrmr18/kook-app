
puts 'Deleting current seed...'

User.delete_all
Chef.delete_all
Recipe.delete_all
Booking.delete_all
Chef_review.delete_all
Recipe_review.delete_all
Chat.delete_all
Message.delete_all

puts 'Starting seed..'

puts 'creating users...'
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: 123456
    )
end
puts "#{User.count} users created"

puts ' creating chefs...'
Chef.create(
  cuisine: 'Mexican',
  user_id: User.first.id,
  )

Chef.create(
  cuisine: 'Italian',
  user_id: User.last,
  )
Chef.create(
  cuisine: 'French',
  user_id: User.first.id + 1,
  )
puts "#{Chef.count} chefs created"


puts 'creating recipes...'
10.times do
  Recipe.create(
    name: Faker::Food.dish,
    description: Faker::Food.description,
    ingredients: [[Faker::Food.measurement, Faker::Food.ingredient], [Faker::Food.measurement, Faker::Food.ingredient], [Faker::Food.measurement, Faker::Food.ingredient], [Faker::Food.measurement, Faker::Food.ingredient]],
    cuisine: ['Mexican', 'Italian', 'French'].sample,
    cook_time: rand(15..90),
    chef_id: [Chef.first, Chef.first + 1, Chef.last].sample
    )
end
puts "#{Recipe.count} recipes created"

puts 'creating bookings...'
Booking.create(
  date: ,
  start_time: Date.today + rand(1..14),
  end_time: ,
  video_url: ,
  user_id: ,
  recipe_id:
  )
Booking.create(
  date: Date.today + rand(1..14),
  start_time: ,
  end_time: ,
  video_url: ,
  user_id: ,
  recipe_id:
)
Booking.create(
  date: Date.today + rand(1..14),
  start_time: ,
  end_time: ,
  video_url: ,
  user_id: ,
  recipe_id:
)
puts "#{Booking.count} bookings created"

puts ' creating chefs...'
Chef_review.create(
  chef_id: ,
  booking_id: ,
  rating: ,
  content:
  )
Chef_review.create(
  chef_id: ,
  booking_id: ,
  rating: ,
  content:
  )
Chef_review.create(
  chef_id: ,
  booking_id: ,
  rating: ,
  content:
  )
puts "#{Chef.count} chef reviews created"

puts 'creating recipes...'
Recipe_review.create(
  chef_id: ,
  name: ,
  description: ,
  ingredients: ,
  cuisine: ,
  cook_time:
  )
Recipe_review.create(
  chef_id: ,
  name: ,
  description: ,
  ingredients: ,
  cuisine: ,
  cook_time:
  )
Recipe_review.create(
  chef_id: ,
  name: ,
  description: ,
  ingredients: ,
  cuisine: ,
  cook_time:
  )
puts "#{Recipe_review.count} recipe reviews created"

puts ' creating chats...'
Chat.create(
  booking_id: ,
  )
Chat.create(
  booking_id: ,
  )
puts "#{Chat.count} chats created"

puts ' creating messages...'
Message.create(
  chat_id: ,
  content: ,
  user_id:
  )
Message.create(
  chat_id: ,
  content: ,
  user_id:
  )
Message.create(
  chat_id: ,
  content: ,
  user_id:
  )
Message.create(
  chat_id: ,
  content: ,
  user_id:
  )
puts "#{Message.count} messages created"

puts "Seeding complete"

