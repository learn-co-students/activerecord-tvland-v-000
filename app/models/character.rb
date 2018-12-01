class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :shows
  
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
  
  def build_show(name: name)
    self.show.name = name 
  end
  
  #jules_cobb.build_show(:name => "Cougar Town")
end