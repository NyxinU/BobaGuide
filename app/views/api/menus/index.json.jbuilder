# @menus.each do |menu|
#   json.set! menu.store_id do 
#     json.drinks do 
#       menu.drinks.each do |drink|
#       json.set! drink.id do 
#       json.partial! '/api/drinks/drink', drink: drink 
#         end 
#       end 
#     end 
#   end 
# end 