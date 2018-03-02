# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Menu.destroy_all
Drink.destroy_all
Review.destroy_all

default_users = [
  { f: "nixon", l: "yiu" },
  { f: "jimmy", l: "li" },
  { f: "brian", l: "sohn" },
  { f: "betty", l: "lam" },
  { f: "rebekah", l: "liu" },
  { f: "tommy", l: "kilmer" },
  { f: "jerry", l: "lau" },
  { f: "david", l: "jang" },
  { f: "mike", l: "quint" },
]

default_users.each do |name|
  pw = "#{name[:f]}123"
  email = "#{name[:f]}@email.com"
  User.create( password: pw, email: email, first_name: "#{name[:f]}", last_name: "#{name[:l]}" )
end

store1 = Menu.create(store_id: "boba-guys-san-francisco-6")
store2 = Menu.create(store_id: "boba-guys-san-francisco-4")
store3 = Menu.create(store_id: "boba-guys-san-francisco-7")

d1 = Drink.create(menu_id: store1.id, name: "Classic Milk Tea")
d2 = Drink.create(menu_id: store1.id, name: "Muscat Oolong Milk Tea")
d3 = Drink.create(menu_id: store1.id, name: "Jasmine Milk Tea")
d4 = Drink.create(menu_id: store1.id, name: "Hong Kong Style")
d5 = Drink.create(menu_id: store1.id, name: "Horchata")
d6 = Drink.create(menu_id: store1.id, name: "Thai Tea")
d7 = Drink.create(menu_id: store1.id, name: "Iced Match Latte")
d8 = Drink.create(menu_id: store1.id, name: "Coffee Milk Tea")
d9 = Drink.create(menu_id: store1.id, name: "Lychee Green Tea Milk Tea")
d10 = Drink.create(menu_id: store1.id, name: "Duke of Earl Grey Milk Tea")

d11 = Drink.create(menu_id: store2.id, name: "Classic Milk Tea")
d12 = Drink.create(menu_id: store2.id, name: "Muscat Oolong Milk Tea")
d13 = Drink.create(menu_id: store2.id, name: "Jasmine Milk Tea")
d14 = Drink.create(menu_id: store2.id, name: "Hong Kong Style")
d15 = Drink.create(menu_id: store2.id, name: "Horchata")
d16 = Drink.create(menu_id: store2.id, name: "Thai Tea")
d17 = Drink.create(menu_id: store2.id, name: "Iced Match Latte")
d18 = Drink.create(menu_id: store2.id, name: "Coffee Milk Tea")
d19 = Drink.create(menu_id: store2.id, name: "Lychee Green Tea Milk Tea")
d20 = Drink.create(menu_id: store2.id, name: "Duke of Earl Grey Milk Tea")

d21 = Drink.create(menu_id: store3.id, name: "Classic Milk Tea")
d22 = Drink.create(menu_id: store3.id, name: "Muscat Oolong Milk Tea")
d23 = Drink.create(menu_id: store3.id, name: "Jasmine Milk Tea")
d24 = Drink.create(menu_id: store3.id, name: "Hong Kong Style")
d25 = Drink.create(menu_id: store3.id, name: "Horchata")
d26 = Drink.create(menu_id: store3.id, name: "Thai Tea")
d27 = Drink.create(menu_id: store3.id, name: "Iced Match Latte")
d28 = Drink.create(menu_id: store3.id, name: "Coffee Milk Tea")
d29 = Drink.create(menu_id: store3.id, name: "Lychee Green Tea Milk Tea")
d30 = Drink.create(menu_id: store3.id, name: "Duke of Earl Grey Milk Tea")

Review.create(
  drink_id: d1.id,
  user_id: User.first.id,
  rating: 3,
  body: "Meh, it was alright"
)

Review.create(
  drink_id: d2.id,
  user_id: User.first.id,
  rating: 5,
  body: "Da best!",
  sugar: 70,
  ice: 50,
  toppings: 'honey boba'
)
