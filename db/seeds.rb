# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

grocery = List.create(name: "Groceries")
to_do = List.create(name: "To Do")

Item.create(content: "wash dishes", list: to_do)
Item.create(content: "clean room", list: to_do)
Item.create(content: "do laundry", list: to_do)

Item.create(content: "potatoes", list: grocery)
Item.create(content: "bread", list: grocery)
Item.create(content: "chocolate", list: grocery)