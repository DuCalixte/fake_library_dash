require 'faker'
require_relative '../app/models/application_record.rb'
require_relative '../app/models/book.rb'
require_relative '../app/models/book_inventory.rb'

module BookGenerator
  def self.generateRandomBook(count)
    (1..count).each do |i|
      title = Faker::Book.title
      description = Faker::Food.description
      quantity = rand(1..10)
      genre = Faker::Book.genre
      isbn = Faker::Code.isbn
      author = Faker::Book.author
      publisher = Faker::Book.publisher

      book = Book.create!( title: title, author: author, publisher: publisher, quantity: quantity, description: description, genre: genre )
      generateBookInventory(book.id, quantity)
    end
  end

  def self.generateBookInventory(book_id, count)
    (1..count).each do |i|
      BookInventory.create!( book_id: book_id, status: 0, is_checkout: false )
    end
  end
end
