user1 = User.create(id: 1, username: "AdminUser", role: "admin", password: "password", email: "admin@admin.com")
user1.image.attach(io: File.open("app/assets/images/user1.png"), filename: "user1.png")

user2 = User.create(id: 2, username: "UserUser", role: "user", password: "password", email: "user@user.com")
user2.image.attach(io: File.open("app/assets/images/user2.png"), filename: "user2.jpg")

yacht1 = Yacht.create(id: 1, name: "Yacht 1", description: "This is our first Yacht", price: 100)
yacht1.image.attach(io: File.open("app/assets/images/yacht1.jpg"), filename: "yacht1.jpg")

yacht2 = Yacht.create(id: 2, name: "Yacht 2", description: "This is our second Yacht", price: 200)
yacht2.image.attach(io: File.open("app/assets/images/yacht2.jpg"), filename: "yacht2.jpg")

yacht2.image.attach(io: File.open("app/assets/images/yacht2.jpg"), filename: "yacht2.jpg")
yacht2.image.attach(io: File.open("app/assets/images/yacht2.jpg"), filename: "yacht2.jpg")

yacht3 = Yacht.create(id:3, name: "Yacht 3", description: "This is our third Yacht", price: 300)
yacht3.image.attach(io: File.open("app/assets/images/yacht3.jpg"), filename: "yacht3.jpg")

yacht4 = Yacht.create(id: 4, name: "Yacht 4", description: "This is our fourth Yacht", price: 400)
yacht4.image.attach(io: File.open("app/assets/images/yacht4.jpg"), filename: "yacht4.jpg")

yacht5 = Yacht.create(id: 5, name: "Yacht 5", description: "This is our fifth Yacht", price: 500)
yacht5.image.attach(io: File.open("app/assets/images/yacht5.jpg"), filename: "yacht5.jpg")

reservation1 = Reservation.create(id: 1, city: "New York", start_date: "2022-07-20", days_number: 5, user_id: 2, yacht_id: 1)