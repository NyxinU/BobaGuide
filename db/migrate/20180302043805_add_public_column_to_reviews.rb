class AddPublicColumnToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :public, :boolean, default: true
  end
end
