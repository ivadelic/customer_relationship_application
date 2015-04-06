class CRM
	def self.run(name)
		crm = CRM.new(name)
		crm.main_menu
	end
	def print_main_menu
		puts "[1] Add a new contact"
		puts "[2] Modify an existing contact"
		puts "[3] Delete a contact"
		puts "[4] Display all the contacts"
		puts "[5] Display an attribute"
		puts "[6] Exit"
		puts "Enter a number: "
	end

	def main_menu
		print_main_menu
		user_selected = gets.to_i
		call_option(user_selected)
	end

	def call_option(user_selected)
		add_new_contact if user_selected ==1
		modify_existing_contact if user_selected == 2
		delete_contact if user_selected == 3
		display_contacts if user_selected == 4
		display_attribute if user_selected == 5
		exit if user_selected == 6
	end
	# add_new_contact etc. are undefined
	def add_new_contact 
		print "Enter first name: "
		first_name = gets.chomp
		print "Enter last name"
		last_name = gets.chomp
		print "Enter Email Address: "
		email = gets. chomp
		print "Enter a Note: "
		note = gets.chomp
		contact = Contact.new(first_name, last_name, email, note) 
	end
end

class Contact 
	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note 
	end 
end 

class Rolodex 
	def initialize
		@contacts = []
		@id = 1000
	end

	def contacts 
		@contacts
	end

	def add_new_contact(contact)
		contact.id = @id
		@contacts << contact
		@id += 1
	end
end


a_crm_app = CRM.new
a_crm_app.main_menu
#or for print_main_menu 
a_crm_app.print_main_menu 

Contact.new("Iva", "Delic", "ms.iva.delic@gmail.com", "Broad.")


