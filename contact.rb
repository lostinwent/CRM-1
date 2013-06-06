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
   # puts "ID:          #{@id}"
   # puts "First name:  #{@firstname}"
   # puts "Last name:   #{@lastname}"
   # puts "Email:       #{@email}"
   # puts "Notes:       #{@notes}"
   "ID:          #{@id}\nFirst name:  #{@firstname}\nLast name:   #{@lastname}\n"\
   "Email:       #{@email}\nNotes:       #{@notes}\n"
  end

end


# bob = Contact.new(50, "bob", "loblaw", "lawblog", "i love law")
# puts bob.contact_display
# bob.firstname = "Slob"
# puts bob.contact_display

