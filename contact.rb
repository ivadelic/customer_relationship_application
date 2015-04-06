class Contact
	attr_accessor :id, :first_name, :last_name, :email, :note 
	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note 
	end

	def to_s
		puts "First Name: #{@first_name} "
		puts "Last Name: #{@last_name} "
		puts "Email: #{@email} "
		puts "Note: #{@note} "
	end

	def modify_contact(contact_id, modify_selection)
		@contacts.find do |contact_id|
		contact.id == contact_id 
		if modify_selection == 1
			first_name_change = first_name.replace
		elsif modify_selection == 2
			last_name_change = last_name.replace
		elsif modify_selection == 3
			email_change = email.replace
		else modify_selection == 4
			note_change = note.replace
		end
	end
end