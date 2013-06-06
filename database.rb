# I should implement the database class as an array that accepts new contacts.
# database class should have the following methods:
  # "add", "modify_contact", "display_all_contacts", "display_particular_contact",
  # "display_info_by_attribute" and "delete_contact".

class Database

  attr_accessor :contacts

  def initialize
    @contacts = []
  end

end
