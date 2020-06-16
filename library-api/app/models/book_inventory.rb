require_relative '../../lib/hash_objects'

class BookInventory < ApplicationRecord
  has_one :book

  enum status: BOOK_STATE
  # enum status: [:home, :office, :mobile, :fax]
end
