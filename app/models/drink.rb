# == Schema Information
#
# Table name: drinks
#
#  id          :integer          not null, primary key
#  store_id     :integer          not null
#  name        :string           not null
#  num_reviews :integer          default(0)
#  avg_rating  :float            default(0.0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Drink < ApplicationRecord
  validates :store_id, :name, presence: true

  belongs_to :store

  has_many :reviews

  def add_review(rating)
    old_reviews = self.num_reviews
    old_rating = self.avg_rating
    new_reviews = old_reviews + 1
    new_rating = ((old_rating * num_reviews) + rating) / new_reviews

    self.update_attributes(num_reviews: new_reviews, avg_rating: new_rating)
  end

  def update_name(name)
    self.update_attributes(name: name)
  end
end
