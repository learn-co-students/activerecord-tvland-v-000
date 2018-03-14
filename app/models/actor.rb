require 'pry'
class Actor < ActiveRecord::Base
	has_many :characters
	has_many :shows, through: :characters
	@characters = []
	@shows = []

	def full_name
		full = "#{self.first_name} #{self.last_name}"
	end

	def list_roles
		n = ''
		s = ''
		role_arr =[]
		
		self.characters.collect do |character| n = character.name
			self.shows.collect {|show| s = show.name}
			role_arr << "#{n} - #{s}"
		end
		role_arr
	end
	#solution
	#def list_roles
    #characters.collect do |character|
      #{}"#{character.name} - #{character.show.name}"
    #end
  #end
end
