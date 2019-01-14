class Actor < ActiveRecord::Base
	has_many :characters
	has_many :shows, through: :characters

	def full_name
		"#{self.first_name} #{self.last_name}"
	end

	def list_roles
		roles = self.characters
		actors_shows = self.shows
		roles.each do |character|
			actors_shows.each do |show|
				return "#{character.name} - #{show.name}"
			end
		end
	end

end