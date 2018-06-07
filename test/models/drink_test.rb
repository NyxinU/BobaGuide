# == Schema Information
#
# Table name: drinks
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  store_id   :integer          not null
#

require 'test_helper'

class DrinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
