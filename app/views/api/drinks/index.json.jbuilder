json.store do 
  json.partial! '/api/stores/store', store: @store
end 

json.drinks do 
  @store.drinks.each do |drink|
    json.set! drink.id do 
      json.partial! '/api/drinks/drink', drink: drink 
    end 
  end 
end 