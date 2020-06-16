class BookList < ApplicationRecord
  belongs_to :user
  has_many :book_list_infos
end
