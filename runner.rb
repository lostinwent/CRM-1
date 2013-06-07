require "./database.rb"

db = Database.new
id = 1000


loop do
  # Display the various options
  puts "Welcome to shitty CRM app"
  puts "type 'add' to add a contact"
  puts "type 'display all' to display all contacts"
  puts "type 'modify' to edit a contacts information"
  input = gets.chomp

  case input
  when "add"
    # Get the various contact attributes from the user and store them to variables
    # Insert those variables in a new contact and add them to the database
    puts "Please enter a first name"
    firstname = gets.chomp
    puts "please enter a last name"
    lastname = gets.chomp
    puts "please enter an email"
    email = gets.chomp
    puts "please enter notes"
    notes = gets.chomp

    db.add(id, firstname, lastname, email, notes)
    id += 1


  when "modify"
    # Prompt the user to select an attribute
    # Confirm that they have selected the correct attribute
    # If 'yes', prompt them to type the new value for the attribute
    # Display that the contact was successfully updated to the user
    puts "Please enter a user id number to modify"
    user_id = gets.chomp
    puts "Please enter an attribute to modify"
    puts "Enter 1 for first name, 2 for last name, 3 for email or 4 for notes"
    user_attribute = gets.chomp

    # puts "You selected #{user_attribute} to modify, are you sure ('yes' to confirm)"
    user_confirm = gets.chomp
    if user_confirm.downcase == 'yes'
      puts "Enter the updated vale"
      user_modification = gets.chomp
      db.modify_contact(user_id, user_attribute, user_modification)
    else
      break
    end

  when "display all"
    # Display all of the contacts in the database to the user
    puts ""
    db.display_all_contacts
    puts ""

  when "display contact"
    # Prompt the user to select a contact by a specific contact attribute (E.g. Khurram)
    # Store the input in a variable and display the corresponding contact

  when "display attribute"
    # Prompt the user to search the database by one of the five attributes (E.g. "ID")
    # Display all of the the contacts by that attribute

  when "delete"
    # Prompt the user to select a contact by a specific contact attribute (E.g. Khurram)
    # Store the input in a variable and display a prompt to confirm "yes" or "no"
    # If 'yes', prompt them to type the new value for the attribute
    # Display that the contact was successfully deleted to the user
    # If 'no', prompt them to type the new value for the attribute
    # Display that the contact could not be found to the user
  when "exit"
    # Exit from the program
    break
  end
end
