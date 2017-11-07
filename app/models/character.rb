class Character < ActiveRecord::Base
    belongs_to :show
    belongs_to :actor
#belongs_to is singular so actor, not actors

    def say_that_thing_you_say
      "#{self.name} always says: #{self.catchphrase}"
    end
  
end
#A character belongs to an actor and belongs to a show.
