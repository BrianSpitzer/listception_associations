# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ApplicationRecord
  validates :name, :uniqueness => :true
  has_many :taggings, :class_name => "Tagging", :foreign_key => "tag_id"
  has_many :cards, :through => :taggings
  has_many :lists, :through => :cards
  has_many :boards, :through => :lists
end
