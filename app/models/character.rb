class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  
  def say_that_thing_you_say
  	%Q(#{self.name} always says: #{self.catchphrase})
  end
  
  def build_show(show)
  	self.show = Show.find_or_create_by(show)
  	self.show
  end
  
  	
end