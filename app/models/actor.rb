class Actor < ActiveRecord::Base
	has_many :characters
	has_many :shows, through: :characters

	def full_name
		"#{self.first_name} #{self.last_name}"
	end

	def list_roles
		roles_array = []
		self.characters.all.each do |character|
			roles_array << "#{character.name} - #{character.show.name}"
		end
		roles_array
	end
end