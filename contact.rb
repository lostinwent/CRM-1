# # the contact class should have five attributes: "id", "firstname", "lastname", "email" and "notes".
# # when a user creates a contact, all five attributes are mandatory.
# # I am able to modify those attributes at any point in the program at a later time.
# # Contact class should also have a method that displays all of its values.

class Contact

  attr_accessor :id, :firstname, :lastname, :email, :notes

  def initialize(id, firstname, lastname, email, notes)
    @id         = id
    @firstname  = firstname
    @lastname   = lastname
    @email      = email
    @notes      = notes
  end

  def contact_display
   puts "ID: #{@id}"
   puts "First name: #{@firstname}"
   puts "Last name: #{@lastname}"
   puts "Email: #{@email}"
   puts "Notes: #{@notes}"
  end

end

