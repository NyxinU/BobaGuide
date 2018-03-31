class ChangeMenuStoreId < ActiveRecord::Migration[5.1]
  def change
    change_table(:menus) do |t|
      t.remove :store_id 
      t.integer :store_id, null: false, unique: true
    end 
  end
end
