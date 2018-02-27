class Menu < ApplicationRecord
  validates :store_id, presence: true, uniqueness: true

  has_many :drinks
end
