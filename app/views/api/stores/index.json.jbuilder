# @stores.each do |store|
#   json.set! store.store_id do 
#     json.drinks do 
#       store.drinks.each do |drink|
#       json.set! drink.id do 
#       json.partial! '/api/drinks/drink', drink: drink 
#         end 
#       end 
#     end 
#   end 
# end 