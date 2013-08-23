class CRM

	def print_main_menu
		puts "
		Welcome to your CRM Application!\n
  		[1] Add a new contact\n
  		[2] Modify an existing contact\n
  		[3] Delete a contact\n
  		[4] Display all the contacts\n
  		[5] Display an attribute\n
  		[6] Exit\n
  		"
  	end

  	def main_menu
  		user_selected = 0
  		while user_selected != 6
  			print_main_menu
  			user_selected = gets.to_i
  			call_option(user_selected)
  		end
	end

	def call_option(user_selected)
		if user_selected.between?(1,6)
  			Contact.add_contact if user_selected == 1
  			Contact.modify_contact if user_selected == 2
  			Contact.delete_contact if user_selected == 3
  			Contact.display_contacts if user_selected == 4
  			Contact.display_attribute if user_selected == 5
  			exit_application if user_selected == 6
  		else
  			puts "You have entered an invalid input. Please choose an option between 1-6."
  			user_selected = gets.chomp
  		end
  	end

	def exit_application
		puts "Have yourself a wonderful day! :D"
	end

end

class Contact

	attr_accessor :first_name, :last_name, :email, :note, :id

	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end

  	def self.add_contact
  		print "First Name: " 
	  	first_name = gets.chomp
	  	print "Last Name: "
	  	last_name = gets.chomp
	  	print "Email Address: "
	  	email = gets.chomp
	  	print "Note (Optional): "
	  	note = gets.chomp

		contact = Contact.new(first_name, last_name, email, note)
	  	Database.add_database(contact)
	end

	def self.modify_contact
	end

	def self.delete_contact
	end

	def self.display_contacts
	end

	def self.display_attribute
	end

end

class Database

  	@contacts = []
  	@id = 0001

  	def self.add_database(contact)
    	contact.id = @id
    	@contacts << contact
    	@id += 1
  	end

  	def self.contacts
    	@contacts
  	end

end

run_crm = CRM.new
run_crm.main_menu