# json.partial! "api/menus/menu", menu: @menu

json.drinks do 
  @menu.drinks.each do |drink|
    json.set! drink.id do 
      json.partial! '/api/drinks/drink', drink: drink 
    end 
  end 
end 
