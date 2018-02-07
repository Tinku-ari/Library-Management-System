class Book < ApplicationRecord
  has_many :lends
  validates :book_code, :title, :author, :presence => true

end
