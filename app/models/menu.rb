class Menu < ApplicationRecord
  validates :store_id, presence: true, uniqueness: true

  belongs_to :store 
  has_many :drinks
end
