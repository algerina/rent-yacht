# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  user_1 = User.create(name: 'German', username: 'german20', role: 'admin', profile_pic: '123', email: 'test.test@test', password: '123456')

  yacht_1 = Yacht.create(name: 'Ship', description: 'Good yacht', price: 110.0, image: '1234')

  reservation_1 = Reservation.create(user_id: 1, yacht_id: 1, start_date: '07 Jul 2022 21:20:49.262680000 UTC +00:00', end_date: 'Thu, 07 Jul 2022 21:20:49.262680000 UTC +00:00', cost: 120.5, city: 'Cairo')

#   {
#     "id": 1,
#     "start_date": "2022-07-07T21:20:49.262Z",
#     "end_date": "2022-07-07T21:20:49.262Z",
#     "cost": "120.5",
#     "city": "Cairo",
#     "created_at": "2022-07-07T21:28:13.246Z",
#     "updated_at": "2022-07-07T21:28:13.246Z",
#     "user_id": 1,
#     "yacht_id": 1
# }