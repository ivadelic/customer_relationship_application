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
		puts "[7] Exit out of program back into command line."
		puts "~ Enter a number to select an option:"
	end

	def call_option(user_selected) #needs a parameter 
		add_contact if user_selected == 1
		modify_contact if user_selected == 2
		display_all if user_selected == 3
		display_contact if user_selected == 4
		find_contact if user_selected == 5
		delete_contact if user_selected == 6
		exit if user_selected == 7
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
	end

	def modify_contact 
		print "Enter the 'id' of the contact that you want to modify. "
		choose_id = gets.chomp
		print "Do you want to edit #{choose_id}? Yes or No. "
		affirmation = gets.chomp.capitalize
		if affirmation == "Yes"
			puts "Do you want to change [1]first name, [2]last name, [3]email, or [4]notes of #{choose_id}"
			modify_selection = gets.chomp.to_i
		else affirmation == "No"
			print main_menu
		end
	end

	def modify_contact2(contact_id, modify_selection)
		if modify_selection  == 1
			puts "Your contact's first name is #{first_name}. Change it below."
			first_name_change = gets.chomp.capitalize
		elsif modify_contact2 == 2
			puts "Your contact's last name is #{last_name}. Change it below."
			last_name_change = gets.chomp.capitalize
		elsif modify_contact2 == 3
			puts "Your contact's email is #{email}. Change it below."
			email_change = gets.chomp.downcase
		elsif modify_contact2 == 4
			puts "Your contact's note(s) is/are: #{note}. Change it below."
			note_change = gets.chomp.capitalize
		else print main_menu
		end 
		contact = Contact.new(first_name,last_name,email,note)
		@rolodex.modify_contact(contact)
	end


	def display_contact
		print "Enter id of what contact you would like to view: "
		contact_id = gets.chomp.to_i
		contact = @rolodex.find(contact_id)
		contact.to_s
	end
end

CRM.run









# 	def display_all
# 		print contact[]
# 	end



