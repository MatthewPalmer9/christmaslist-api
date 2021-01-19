# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'matthewpalmer9@outlook.com', username: 'matthewpalmer9', password: '44183Ad5!!', list_id: 1)
List.create(name: 'Matts List', user_id: 1)
Listitem.create(description: 'example', url: 'https://example.com', list_id: 1, user_id: 1)
