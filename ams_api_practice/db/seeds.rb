User.create(name: "1st user", email: "1stemail@gmail.com")
User.create(name: "2nd user", email: "2ndemail@gmail.com")
User.create(name: "3rd user", email: "3rdemail@gmail.com")

RentalUnit.create(address: "1st address", rooms: 2, bathrooms: 2, price_cents: 50000, user_id:1)
RentalUnit.create(address: "2nd address", rooms: 2, bathrooms: 2, price_cents: 50000, user_id:1)
RentalUnit.create(address: "3rd address", rooms: 2, bathrooms: 2, price_cents: 50000, user_id:1)
RentalUnit.create(address: "4th address", rooms: 2, bathrooms: 2, price_cents: 50000, user_id:2)
