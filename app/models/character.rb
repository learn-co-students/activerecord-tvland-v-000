#* Define a method in the `Character` class, `#say_that_thing_you_say`, using a given character's catchphrase.
#A character belongs to an actor and belongs to a show. MH
class Character < ActiveRecord::Base
  def say_that_thing_you_say
    self.catchphrase
  end
end
