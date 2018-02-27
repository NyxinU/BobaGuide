class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :drink_id, null: false
      t.integer :user_id, null: false
      t.integer :rating, null: false
      t.text :body
      t.integer :sugar, default: 100
      t.integer :ice, default: 100
      t.string :toppings
      t.string :img_url

      t.timestamps
    end

    add_index :reviews, :drink_id
    add_index :reviews, :user_id
  end
end
