class RemoveMenuTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :menus
    change_table(:drinks) do |t|
      t.remove :menu_id
      t.integer :store_id, null: false, uniqueness: true
    end 
  end
end
