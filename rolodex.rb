class Rolodex
	attr_reader :contacts
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

	def delete(contact)
		@contacts.delete(contact)
	end 

	def display_all
		@contacts.each do |contact|
			puts contact.to_s
		end
	end
end