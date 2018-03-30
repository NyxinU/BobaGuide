class Store < ApplicationRecord
  validates :store_id, presence: true, uniqueness: true

  has_one :menu
end
