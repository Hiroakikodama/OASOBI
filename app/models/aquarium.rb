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
class Aquarium < ApplicationRecord
  has_many :comments
  attachment :image
  validates :name, presence: true
  validates :body, presence: true, length: { maximum: 500, minimum: 30 }
  validates :address, presence: true
end
