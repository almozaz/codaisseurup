Category.destroy_all
User.destroy_all
Event.destroy_all

ana = User.create!(email: "ana@codaisseurup.com", password: "123456")
john = User.create!(email: "john@codaisseurup.com", password: "123456")
anaprofile = Profile.create!(first_name: "ana", last_name: "Smith", bio: "Hey!!", user: ana)
johnprofile = Profile.create!(first_name: "John", last_name: "Doe", bio: "Hello there", user: john)

night = Category.create(name: "Night")
day = Category.create(name: "Day")
inside = Category.create(name: "Inside")
outside = Category.create(name: "Outside")

event1 = Event.create(name: "Birthday party", description: "Best b-day party ever", location: "My place", price: 0.0, capacity: 15, includes_food: false, includes_drinks: true, starts_at: "0020-10-10 01:00:00", ends_at: "0020-10-11 01:00:00", active: true, created_at: "2017-09-05 15:58:04", updated_at: "2017-09-05 18:37:08", user: ana, categories: [day, inside])
event2 = Event.create(name: "Pillow Fight", description: "Come have fun!", location: "Dam Square", price: 0.5e1, capacity: 5000, includes_food: false, includes_drinks: false, starts_at: "2017-03-31 00:00:00", ends_at: "2017-03-31 14:00:00", active: true, created_at: "2017-09-05 18:39:22", updated_at: "2017-09-05 18:39:22", user: ana, categories: [night, inside])
event3 = Event.create(name: "hidden", description: "hidden", location: "Amsterdam", price: 0.1e2, capacity: 5, includes_food: true, includes_drinks: true, starts_at: "2017-01-01 01:00:00", ends_at: "2017-01-01 02:00:00", active: false, created_at: "2017-09-05 18:40:13", updated_at: "2017-09-05 18:40:13", user: john, categories: [day, outside])
event4 = Event.create(name: "Movies!", description: "Let's go to the movies together", location: "Pathe Amsterdam", price: 0.1e2, capacity: 25, includes_food: false, includes_drinks: false, starts_at: "2017-03-03 14:00:00", ends_at: "2017-03-03 17:00:00", active: true, created_at: "2017-09-05 18:41:22", updated_at: "2017-09-05 18:41:22", user: john, categories: [day, inside])
