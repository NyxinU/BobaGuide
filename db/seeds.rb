# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Store.destroy_all
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

all_users = []
default_users.each do |name|
  pw = "#{name[:f]}123"
  email = "#{name[:f]}@email.com"
  all_users << User.create( password: pw, email: email, first_name: "#{name[:f]}", last_name: "#{name[:l]}" )
end

stores = [
  "boba-guys-san-francisco-7",
  "boba-guys-san-francisco-6",
  "boba-guys-san-francisco-4",
]

all_stores = []
stores.each do |store|
  all_stores << Store.create(store_id: store)
end 

drinks = [
  "Classic Milk Tea", 
  "Jasmine Milk Tea", 
  "Hong Kong Style", 
  "Horchata", 
  "Thai Tea",
  "Iced Matcha Latte",
  "Coffee Milk Tea",
  "Muscat Oolong Milk Tea",           
  "Lychee Green Tea Milk Tea",
  "Duke of Earl Grey Milk Tea",
  "Rose Black Tea Milk Tea",
  "Golden Honey Black Milk Tea",
  "Hojicha Milk Tea",
  "Decaf Black Milk Tea",
  "Chamomile Mint Milk Tea"
]

all_drinks = []
stores.length.times do |i|
  drinks.each do |name|
    all_drinks << Drink.create(store_id: all_stores[i].id, name: name)
  end 
end 

ratings = (1..5).to_a
bodies = [
  "worst thing I have ever drank in my life",
  "not good, would not come again",
  "meh nothing special, not really worth the trip",
  "the drink was pretty good, will come back",
  "AMAZING, SO GOOD, 10/10 will come back!!!"
]
sugar_ice_level = [0, 25, 50, 75, 100]
all_toppings = ["tapioca balls", "almond jelly", "grass jelly"]

all_reviews = []
100.times do
  rating = ratings.sample
  all_reviews << Review.create(
    drink_id: all_drinks[0..14].sample.id,
    user_id: all_users.sample.id,
    rating: rating,
    body: bodies[rating - 1],
    sugar: sugar_ice_level.sample,
    ice: sugar_ice_level.sample,
    toppings: all_toppings.sample
  )
end
