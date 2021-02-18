puts 'Starting seed..'

10.times do
  User.create(
    first_name: ,
    last_name: ,
    username: ,
    email: ,
    password:
    )
end


Chef.create(
  cuisine: ,
  user_id: User.first,
  )

Chef.create(
  cuisine: ['Italian', 'American', 'Greek', 'Japanese', 'French', 'Mexican'].sample,
  user_id: User.last,
  )



Booking.create(

  )
Booking.create(

)
Booking.create(

)


Chef_review.create(

  )
Chef_review.create(

  )
Chef_review.create(

  )

