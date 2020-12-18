# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tag < ApplicationRecord
  has_many :aquarium_tag_relations, dependent: :delete_all
  has_many :aquaria, through: :aquarium_tag_relations
end
