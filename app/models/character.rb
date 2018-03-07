class Character < ActiveRecord::Base
  has_many :shows
  has_many :actors, through: :shows

   def self.say_that_thing_you_say
     self.catchphrase
   end
end
