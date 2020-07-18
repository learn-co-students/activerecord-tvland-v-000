require 'pry'

class Actor < ActiveRecord::Base
	has_many :characters
	has_many :shows, through: :characters

	def full_name
		full_name = first_name + " " + last_name
	end

	def list_roles
		characters = []
		characters = self.characters.map do |character|
			"#{character.name} - #{character.show.name}"
		end
	end
end
