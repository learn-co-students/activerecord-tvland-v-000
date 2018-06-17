class Character < ActiveRecord::Base
	belongs_to :actor
  belongs_to :show

	def say_that_thing_you_say
		"#{self.name} always says: #{self.catchphrase}"
	end 

	def build_show(instance_data)
		show = Show.new(instance_data)
		show.characters << self
		show.save
		show
	end
end
