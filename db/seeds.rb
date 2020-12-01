# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

runner1 = User.create(
  email: "jj@gmail.com",
  password: "lewagon",
  first_name: "John",
  last_name: "Smith",
  address: "Gangnam-gu"
)

runner2 = User.create(
  email: "sarah@gmail.com",
  password: "lewagon",
  first_name: "Sarah",
  last_name: "Kim",
  address: "Dongdaemun-gu",
)
