class AddIndexToMenu < ActiveRecord::Migration[5.1]
  def change
    add_index :menus, :store_id 
  end
end
