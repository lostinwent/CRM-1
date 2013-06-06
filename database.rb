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


    #   if option == 1
    #    attribute =  contact.id
    #   elsif option == 2
    #     attribute = contact.firstname
    #   elsif option == 3
    #     attribute = contact.lastname
    #   elsif option == 4
    #     attribute = contact.email
    #   elsif option == 5
    #     attribute = contact.notes
    #   end
    # end

    # pass in an attribute
    # return all values of this attribute
    # @contacts.each do |contact|
    #   if attribute == "id"
    #     contact.id
    #   end
    # end
  end

  def delete_contact()
  end

end

db = Database.new
db.add(58, "Anish", "K", "ak@ak.com", "notes1")
db.add(23,"betty","l","betty@betty.com","notes")
# # # p db.contacts
# db.display_particular_contact(2, "anish")
# puts @contact[0]
# puts db.contacts[1].firstname
# db.display_particular_contact("Anish")
# db.display_info_by_attribute(1)
Contact.new.id

