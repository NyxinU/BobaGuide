class AddHotColdCol < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :hot, :boolean, default: false
  end
end
