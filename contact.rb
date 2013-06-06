# the contact class should have five attributes: "id", "firstname", "lastname", "email" and "notes".
# when a user creates a contact, all five attributes are mandatory.
# I am able to modify those attributes at any point in the program at a later time.
# Contact class should also have a method that displays all of its values.

class Contact

  attr_accessor :id, :firstname, :lastname, :email, :notes

  def initialize(args)
    @id         = args[:id] || default_id
    @firstname  = args[:firstname]
    @lastname   = args[:lastname]
    @email      = args[:email]
    @notes      = args[:notes]
  end


  def default_id
    1000
  end

end

# bob = Contact.new(firstname: "Bob", id: 420)
# p bob


