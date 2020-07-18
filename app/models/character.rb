class Character < ActiveRecord::Base
#An actor should have many characters and many shows through characters.
 belongs_to :actor
 belongs_to :show

 def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end
