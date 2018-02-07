class Lend < ApplicationRecord
  belongs_to :members
  belongs_to :books

  validates :member_id, :book_code, :date_of_issue, :presence => true

  def get_member_and_book
    members = self.members.pluck(:name)
    books = self.books.pluck(:title)
  end

  # def self.search(search)
end
