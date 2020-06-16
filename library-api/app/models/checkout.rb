require_relative '../../lib/hash_objects'

class Checkout < ApplicationRecord
  has_many :books
  has_many :book_inventories
  has_many :users

  enum last_status: HashObjects::BOOK_STATE
  enum status: HashObjects::BOOK_STATE
end
