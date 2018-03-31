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

require 'test_helper'

class DrinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
