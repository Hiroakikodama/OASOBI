# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  comment     :text             not null
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  aquarium_id :integer
#
# Indexes
#
#  index_comments_on_aquarium_id  (aquarium_id)
#
class Comment < ApplicationRecord
  belongs_to :aquarium
  validates :name, presence: true, length: { maximum: 10 }
  validates :comment, presence: true, length: { maximum: 1000 }
end
