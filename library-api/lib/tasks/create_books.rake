require_relative '../book_generator.rb'

namespace :generate do
  desc 'a rake task to create a series of random users'
  task :books => :environment do
    # Generate books
    BookGenerator.generateRandomBook(30)
  end
end
