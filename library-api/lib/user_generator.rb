require 'faker'
require 'random_username'
require_relative '../app/models/application_record.rb'
require_relative '../app/models/user.rb'

module UserGenerator
  def self.generateAdminUser
    User.create!( username: 'admin', firstname: 'John', lastname: 'Oliver', is_admin: true )
  end

  def self.generateRandomUserCount(count)
    (1..count).each do |i|
      username = RandomUsername.username
      firstname = Faker::Name.first_name
      lastname = Faker::Name.last_name

      User.create!( username: username, firstname: firstname, lastname: lastname, is_admin: false )
    end
  end
end
