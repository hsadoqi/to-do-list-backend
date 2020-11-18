# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

List.create(name: "first")

Item.create(content: "wash dishes", list: List.all.sample)
Item.create(content: "clean room", list: List.all.sample)
Item.create(content: "do laundry", list: List.all.sample)