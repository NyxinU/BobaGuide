class RemoveColumnsFromDrinks < ActiveRecord::Migration[5.1]
  def change
    change_table(:drinks) do |t|
      t.remove :num_reviews
      t.remove :avg_rating
    end 
    rename_column :stores, :store_id, :yelp_store_id
  end
end
