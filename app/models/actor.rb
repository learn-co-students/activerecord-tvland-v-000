class Actor < ActiveRecord::Base
	has_many :characters
  has_many :shows, through: :characters

	def full_name
		"#{self.first_name} #{self.last_name}"
	end  

	def list_roles
		out = self.shows.collect do |e| 
			show_name = e.name
			character_name = Character.where('actor_id = ? and show_id = ?', self.id, e.id).first.name
			"#{character_name} - #{e.name}"
		end
	end
end
