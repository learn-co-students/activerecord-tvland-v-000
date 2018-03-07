class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

   def self.say_that_thing_you_say
     self.catchphrase
   end
end
