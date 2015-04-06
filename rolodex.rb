class Rolodex
	def initialize #a default value for a .new object 
		@contacts = [ ]
		@id = 1  #an array
	end
	def add_contact(contact)
		contact.id = @id
		@contacts << contact
		@id += 1 
	end

	def find(contact_id)
		@contacts.find do |contact|
			contact.id == contact_id 
		end
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