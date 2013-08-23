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
  			puts "\e[H\e[2J"
  			puts "You have entered an invalid input. Please choose an option between 1-6."
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
  		puts "\e[H\e[2J"
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
	  	puts "\e[H\e[2J"
	  	puts "The contact has been added."
	end

	def self.modify_contact
  		puts "\e[H\e[2J"
  		print "Contact ID: "
	  	modify_id = gets.to_i
	  	modified_contact_place = 0
		contact_counter = 0
			Database.contacts.each do |contact|
				if contact.id == modify_id
					puts "
					First Name: #{Database.contacts[contact_counter].first_name}
					Last Name: #{Database.contacts[contact_counter].last_name}
					Email: #{Database.contacts[contact_counter].email}
					Note: #{Database.contacts[contact_counter].note}
					"
					modified_contact_place = contact_counter
				end
				contact_counter += 1
			end
	  	puts "Are you sure you wish to modify contact #{modify_id}? (y/n)"
	  	delete_confirmation = gets.downcase.chomp
			if delete_confirmation == "y"
				puts "Enter new First Name: "
				Database.contacts[modified_contact_place].first_name = gets.chomp
				puts "Enter new Last Name: "
				Database.contacts[modified_contact_place].last_name = gets.chomp
				puts "Enter new Email: "
				Database.contacts[modified_contact_place].email = gets.chomp
				puts "Enter new Note: "
				Database.contacts[modified_contact_place].note = gets.chomp
			end
			puts "\e[H\e[2J"
	  		puts "The contact has been modified."
	end

	def self.delete_contact
		puts "\e[H\e[2J"
		print "Contact ID: "
	  	delete_id = gets.to_i
	  	puts "Are you sure you wish to delete contact #{delete_id}? (y/n)"
	  	response = gets.downcase.chomp
	  		if response == "y"
	  			contact_counter=  0
				Database.contacts.each do |contact|
					Database.contacts.delete_at(contact_counter) if contact.id == delete_id
					contact_counter += 1
	  			end
	  			puts "\e[H\e[2J"
	  			puts "The contact has been deleted."
	  		end
	end

	def self.display_contacts
		puts "\e[H\e[2J"
		Database.contacts.each do |contact|
			puts "
			First Name: #{contact.first_name}
			Last Name: #{contact.last_name}
			Email: #{contact.email}
			Note: #{contact.note}
			Contact ID: #{contact.id}
			"
		end
	end


	def self.display_attribute
		puts "\e[H\e[2J"
		puts "Which attribute would you like to view?
		[1] First Name
		[2] Last Name
		[3] Email
		[4] Note
		[5] Contact ID"
		attribute = gets.to_i
		Database.contacts.each do |contact|
			puts "\t\t#{contact.first_name}" if attribute == 1
			puts "\t\t#{contact.last_name}" if attribute == 2
			puts "\t\t#{contact.email}" if attribute == 3
			puts "\t\t#{contact.note}" if attribute == 4
			puts "\t\t#{contact.id}" if attribute == 5
		end
	end

	def verify_id(id)
		Database.contacts.each do |contact|
			return true if contact.id == id
		end
		return false
	end

end

class Database

  	@contacts = []
  	@id = 1000

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