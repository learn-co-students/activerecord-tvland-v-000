class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  #Define a method in the Character class using a given character's catchphrase.
  def say_that_thing_you_say
    self.catchphrase
  end
end
