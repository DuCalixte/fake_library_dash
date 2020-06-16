require_relative '../user_generator.rb'

namespace :generate do
  desc 'a rake task to create a series of random users'
  task :users => :environment do
    # Generate admin user
    UserGenerator.generateAdminUser
    UserGenerator.generateRandomUserCount(3)
  end
end
