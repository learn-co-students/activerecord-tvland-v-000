class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show
  
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
  
  def build_show(name: name)
    new_show = Show.new(name: "#{name}")
    self.show = new_show 
  end
  
  #jules_cobb.build_show(:name => "Cougar Town")
end