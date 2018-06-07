# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  drink_id   :integer          not null
#  user_id    :integer          not null
#  rating     :integer          not null
#  body       :text
#  sugar      :integer          default(100)
#  ice        :integer          default(100)
#  toppings   :string
#  img_url    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  hot        :boolean          default(FALSE)
#  public     :boolean          default(TRUE)
#

class Review < ApplicationRecord
  validates :drink_id, :user_id, :rating, presence: true

  belongs_to :drink
  belongs_to :user

end
