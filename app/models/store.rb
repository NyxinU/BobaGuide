# == Schema Information
#
# Table name: stores
#
#  id            :integer          not null, primary key
#  yelp_store_id :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Store < ApplicationRecord
  validates :yelp_store_id, presence: true, uniqueness: true

  has_many :drinks
end
