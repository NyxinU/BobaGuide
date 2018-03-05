# == Schema Information
#
# Table name: menus
#
#  id         :integer          not null, primary key
#  store_id   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Menu < ApplicationRecord
  validates :store_id, presence: true, uniqueness: true

  has_many :drinks
end
