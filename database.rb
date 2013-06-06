# I should implement the database class as an array that accepts new contacts.
# database class should have the following methods:
  # "add", "modify_contact", "display_all_contacts", "display_particular_contact",
  # "display_info_by_attribute" and "delete_contact".

require_relative "contact"

class Database

  attr_accessor :contacts, :refid

  def initialize
    @contacts = []
  end

  def add(id, firstname, lastname, email, notes)
  # refid = Contact.new(id, firstname, lastname, email, notes)
    @contacts << Contact.new(id, firstname, lastname, email, notes)
  end

  def modify_contact

  end

  def display_all_contacts
    @contacts.each do |contact|
      contact.contact_display
      puts ""
    end
  end

  # find the specific contact given... the keyword
  def display_particular_contact(option, keyword)

    # puts "1. ID"
    # puts "2. First Name"
    # puts "3. Last Name"
    # puts "4. Email"
    # puts "5. Notes"


    # i don't know where it is....how do i find it?
    @contacts.each do |contact|
      if option == 1

      elsif option == 2

      elsif option == 3

      elsif option == 4

      elsif option == 5


      option = contact.firtname if choice == 2
      contact.contact_display if option == keyword
    end

  end

  def display_info_by_attribute
  end

  def delete_contact()
  end

end

db = Database.new
db.add(58, "Anish", "K", "ak@ak.com", "notes1")
db.add(23,"betty","l","betty@betty.com","notes")
# # # p db.contacts
db.display_particular_contact
# puts @contact[0]
# puts db.contacts[1].firstname

# db.display_particular_contact("Anish")

