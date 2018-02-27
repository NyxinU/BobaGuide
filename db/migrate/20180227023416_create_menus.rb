class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :store_id, null: false, unique: true 
      t.timestamps
    end
  end
end
