class BookListInfo < ApplicationRecord
  has_one :book
  belongs_to :book_list
end
