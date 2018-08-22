class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  #A character belongs to an actor and belongs to a show.

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
  #Define a method in the Character class, #say_that_thing_you_say, using a given character's catchphrase.
end
