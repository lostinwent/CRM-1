# I should implement the database class as an array that accepts new contacts.
# database class should have the following methods:
  # "add", "modify_contact", "display_all_contacts", "display_particular_contact",
  # "display_info_by_attribute" and "delete_contact".

require_relative "contact"

class Database

  attr_accessor :contacts

  def initialize
    @contacts = []
  end

  def add(id, firstname, lastname, email, notes)
    @contacts << Contact.new(id, firstname, lastname, email, notes)
  end

  # How do you determine which Contact to modify?
  def modify_contact(selection)#, attribute, modification)
    puts "wat"
  end

  def display_all_contacts
    @contacts.each do |contact|
      contact.contact_display
      puts ""
    end
  end

  # find the specific contact given... the keyword
  def display_particular_contact(option, keyword)
    @contacts.each do |contact|
      if option == 1
        contact.contact_display if keyword == contact.id
      elsif option == 2
        contact.contact_display if keyword == contact.firstname
      elsif option == 3
        contact.contact_display if keyword == contact.lastname
      elsif option == 4
        contact.contact_display if keyword == contact.email
      elsif option == 5
        contact.contact_display if keyword == contact.notes
      end
    end
  end

  def display_info_by_attribute(option)
    result = []
    @contacts.each do |contact|
      if option == 1
        result << contact.id
      elsif option == 2
        result << contact.firstname
      elsif option == 3
        result << contact.lastname
      elsif option == 4
        result << contact.email
      elsif option == 5
        result << contact.notes
      end
    end

    result.each do |res|
      puts res
    end
    # result
  end

  def delete_contact()
  end

end

db = Database.new
db.add(58, "Anish", "K", "ak@ak.com", "notes1")
db.add(23,"betty","l","betty@betty.com","notes")
db.add(01, "matt", "yo", "word@bigbird.com", "notes3")
db.add(77, "Loser", "Double", "Me@me.com", "notes4")

# p db.contacts
# db.display_particular_contact(2, "Anish")
# db.display_info_by_attribute(2)
# puts @contact[0]
# puts db.contacts[1].firstname
# db.display_particular_contact("Anish")
# db.display_info_by_attribute(1)
# Contact.new.id

# p db.modify_contact("Anish")

