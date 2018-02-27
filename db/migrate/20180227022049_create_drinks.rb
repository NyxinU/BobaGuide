class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.integer :menu_id, null: false
      t.string :name, null: false
      t.integer :num_reviews, default: 0
      t.float :avg_rating, default: 0

      t.timestamps
    end

    add_index :drinks, :menu_id
  end
end
