require "./contact.rb"
require "./database.rb"

class Runner

  @@id = 1000


  def self.run
  end


  # Every user is given an ID from the class variable @@id
  # After each user is created, @@id counter incremented by 1
  def self.add()
    @@id += 1
  end

end

# TODO: display_particular_contact must pass in option and keyword (example below)
  # puts "Do you want to search by?"
  # puts "1. ID"
  # puts "2. First Name"
  # puts "3. Last Name"
  # puts "4. Email"
  # puts "5. Notes"
  # puts "Please enter a number"

  # choice = gets.chomp.to_i
  # puts "Please enter your search string"
  # keyword = gets.chomp

# TODO:

Runner.run
