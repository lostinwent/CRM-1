require_relative "contact"

class Database

  attr_accessor :contacts

  def initialize
    @contacts = []
  end

  def add(id, firstname, lastname, email, notes)
    @contacts << Contact.new(id, firstname, lastname, email, notes)
  end


  # given an id, return the index of that contact
  def contact_index_helper(id_number)
    idx = nil
    @contacts.each_with_index do |contact, index|
      if contact.id == id_number
        idx = index
      end
    end
    idx
  end

  # user specifies id to look-up a contact
  # user then specifies which attribute to modify within this contact
  # then this modification is applied
  def modify_contact(selection, attribute, modification)
    index = contact_index_helper(selection)
    @contacts[index].firstname = modification
  end

  def display_all_contacts
    @contacts.each do |contact|
      contact.contact_display
    end
  end

  def display_particular_contact(id_num)
    index = contact_index_helper(id_num)
    @contacts[index].contact_display unless index.nil?
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

    # result.each do |res|
    #   puts res
    # end

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
# db.display_info_by_attribute(2)
# puts @contact[0]
# puts db.contacts[1].firstname
# db.display_particular_contact("Anish")
# db.display_info_by_attribute(1)
# Contact.new.id
# db.modify_contact(58, "firstname", "aoifj")
# p db.display_particular_contact(2, "Anish")

puts db.display_particular_contact(99)


