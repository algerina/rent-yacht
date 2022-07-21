user1 = User.create(username: 'AdminUser', role: 1, password: 'password', email: 'admin@admin.com')
user1.image.attach(io: File.open('app/assets/images/user1.png'), filename: 'user1.png')

user2 = User.create(username: 'UserUser', role: 0, password: 'password', email: 'user@user.com')
user2.image.attach(io: File.open('app/assets/images/user2.png'), filename: 'user2.jpg')

yacht1 = Yacht.create(name: 'Yacht 1', description: 'This is our first Yacht', price: 100)
yacht1.image.attach(io: File.open('app/assets/images/yacht1.jpg'), filename: 'yacht1.jpg')

yacht2 = Yacht.create(name: 'Yacht 2', description: 'This is our second Yacht', price: 200)
yacht2.image.attach(io: File.open('app/assets/images/yacht2.jpg'), filename: 'yacht2.jpg')

yacht2.image.attach(io: File.open('app/assets/images/yacht2.jpg'), filename: 'yacht2.jpg')
yacht2.image.attach(io: File.open('app/assets/images/yacht2.jpg'), filename: 'yacht2.jpg')

yacht3 = Yacht.create(name: 'Yacht 3', description: 'This is our third Yacht', price: 300)
yacht3.image.attach(io: File.open('app/assets/images/yacht3.jpg'), filename: 'yacht3.jpg')

yacht4 = Yacht.create(name: 'Yacht 4', description: 'This is our fourth Yacht', price: 400)
yacht4.image.attach(io: File.open('app/assets/images/yacht4.jpg'), filename: 'yacht4.jpg')

yacht5 = Yacht.create(name: 'Yacht 5', description: 'This is our fifth Yacht', price: 500)
yacht5.image.attach(io: File.open('app/assets/images/yacht5.jpg'), filename: 'yacht5.jpg')

reservation1 = Reservation.create(city: 'New York', start_date: '2022-07-20', days_number: 6, user_id: user2.id,
                                  yacht_id: yacht1.id)
