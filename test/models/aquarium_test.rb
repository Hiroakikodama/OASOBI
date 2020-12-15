# == Schema Information
#
# Table name: aquaria
#
#  id         :integer          not null, primary key
#  address    :text
#  body       :text             not null
#  name       :string           not null
#  official   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_id   :string
#
# Indexes
#
#  index_aquaria_on_name  (name)
#
require 'test_helper'

class AquariumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
