# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

default_users = [
  { f:"nixon", l:"yiu" },
   { f:"jimmy", l:"li" },
   { f:"brian", l:"sohn" },
   { f:"betty", l:"lam" },
   { f:"rebekah", l:"liu" },
   { f:"tommy", l:"kilmer" },
   { f:"jerry", l:"lau" },
   { f:"david", l:"jang" },
   { f:"mike", l:"quint" },
]

User.destroy_all

default_users.each do |name|
  pw = "#{name[:f]}123"
  email = "#{name[:f]}@email.com"
  User.create(password: pw, email: email, first_name: "#{name[:f]}", last_name: "#{name[:l]}")
end
