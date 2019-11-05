class Character < ActiveRecord::Base
 belongs_to :actor  #A character belongs to an actor and belongs to a show
 belongs_to :show 
 
 
 def say_that_thing_you_say
   "#{self.name} always say: #{self.catchphrase}"
   
 end 
 
 
end