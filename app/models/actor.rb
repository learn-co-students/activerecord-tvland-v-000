class Actor < ActiveRecord::Base
	has_many :characters
	has_many :shows, through: :characters

	def full_name
		f = self.first_name
		l = self.last_name
		[f, l].join(' ')
	end

	def list_roles
		self.characters.collect do |x|
			"#{x.name} - #{x.show.name}"
		end
	end
end