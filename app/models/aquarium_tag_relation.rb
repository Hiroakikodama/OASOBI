# == Schema Information
#
# Table name: aquarium_tag_relations
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  aquarium_id :integer
#  tag_id      :integer
#
# Indexes
#
#  index_aquarium_tag_relations_on_aquarium_id  (aquarium_id)
#  index_aquarium_tag_relations_on_tag_id       (tag_id)
#
class AquariumTagRelation < ApplicationRecord
  belongs_to :aquarium
  belongs_to :tag
end
