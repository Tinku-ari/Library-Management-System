class Member < ApplicationRecord
  has_many :lends
  validates :name, :description, :presence => true

  # def self.sorted_all
  # 	elems = Member.all
  # 	elems.sort! do |a, b|
  # 		b.name <=> a.name
  # 	end
  # 	elems
  # end
end
