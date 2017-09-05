Category.destroy_all
User.destroy_all

ana = User.create!(email: "ana@codaisseurup.com", password: "123456")

# great party", location: "My house", price: 10.5, capacity: 50,
# includes_food: no, includes_drinks: yes, starts_at: "2017-09-05 12:48:49",ends_at: "2017-09-05 14:48:49",active: yes, user: ana)
night = Category.create(name: "Night")
day = Category.create(name: "day")
inside = Category.create(name: "Inside")
outside = Category.create(name: "Outside")
