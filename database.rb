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

  def display_particular_contact(keyword)
    @contacts.find { |i| i[keyword] }
  end

  def display_info_by_attribute
  end

  def delete_contact()
  end

end

db = Database.new
bob = db.add(58, "Anish", "K", "ak@ak.com", "notes1")
db.add(23,"betty","l","betty@betty.com","notes")
# p db.contacts
p db.display_particular_contact("Anish")
# p bob.refid
