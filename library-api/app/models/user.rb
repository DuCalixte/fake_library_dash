class User < ApplicationRecord
  has_many :book_lists
  has_many :checkouts
  has_many :book_list_infos, :through => :book_lists
end
