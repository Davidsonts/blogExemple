# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create name: 'David', state: :active, kind: :manager, email: 'manager@gmail.com', password: '123456'
User.create name: 'Alan', state: :active, kind: :salesman, email: 'alan@gmail.com', password: '123456'

Category.create name: 'Programming'
Category.create name: 'NodeJs'
Category.create name: 'Ruby'
Category.create name: 'Ruby On Rails'