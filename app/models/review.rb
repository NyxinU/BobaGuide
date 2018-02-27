class Review < ApplicationRecord
  validates :drink_id, :user_id, :rating, presence: true

  belongs_to :drink
  belongs_to :user

end
