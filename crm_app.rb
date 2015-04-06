require_relative "contact"
require_relative "rolodex"

class CRM
	def self.run
		crm = new #in the class no need to put method
		crm.main_menu
	end

	def initialize
		@rolodex = Rolodex.new
	end

	def print_main_menu
		puts "[1] Add a contact."
		puts "[2] Modify an existing contact."
		puts "[3] Display all contacts."
		puts "[4] Display a particular contact."
		puts "[5] Find a contact with email, name, or notes."
		puts "[6] Delete a contact."
		puts "[exit] Exit out of program back into command line."
		puts "~ Enter a number to select an option:"
	end

	def call_option(user_selected) #needs a parameter 
		add_contact if user_selected == 1
		modify_contact if user_selected == 2
		display_all if user_selected == 3
		display_contact if user_selected == 4
		find_contact if user_selected == 5
		delete_contact if user_selected == 6
		exit if user_selected == exit
	end


	def main_menu
		while true
			print_main_menu
			user_selected = gets.chomp.to_i
			call_option(user_selected)
		end
	end 

	def add_contact
		print "Enter a first name. "
		first_name = gets.chomp
		print "Enter a last name. "
		last_name = gets.chomp
		print "Enter an email. "
		email = gets.chomp
		print "Enter a note for contact. "
		note = gets.chomp
		contact = Contact.new(first_name,last_name,email,note)
		@rolodex.add_contact(contact)
		main_menu
	end

	def modify_contact 
		print "Enter the 'id' of the contact that you want to modify. "
		contact_id = gets.chomp.to_i
		contacts = @rolodex.find(contact_id)
		print "Do you want to edit #{contact_id}? Yes or No. "
		affirmation = gets.chomp.capitalize
		if affirmation == "Yes"
			puts "Do you want to change [1]first name, [2]last name, [3]email, or [4]notes."
			puts "Enter a selection."
			modify_selection = gets.chomp.to_i
			if modify_selection  == 1
				puts "Change  the contact's first name it below."
				contacts.first_name = gets.chomp
			elsif modify_selection == 2
				puts "Change the contact's last name below."
				contacts.last_name_change = gets.chomp.capitalize
			elsif modify_selection == 3
				puts "Change the contact's email below."
				contacts.email = gets.chomp.downcase
			elsif modify_selection == 4
				puts "Change your contacts notes below."
				contacts.note = gets.chomp.capitalize
			end 
 		contacts.to_s
 		end
 		main_menu
	end

	def display_contact
		print "Enter id of what contact you would like to view: "
		contact_id = gets.chomp.to_i
		contact = @rolodex.find(contact_id)
		contact.to_s
		main_menu
	end

	def delete_contact
		print "Enter id of what contact you would like to delete: "
		contact_id = gets.chomp.to_i
		contact = @rolodex.find(contact_id)
		puts contact.to_s
		@rolodex.delete(contact)
		print "Contact has been deleted. "
		main_menu
	end

	def display_all
		@rolodex.display_all
	end
end

CRM.run









# 	def display_all
# 		print contact[]
# 	end



