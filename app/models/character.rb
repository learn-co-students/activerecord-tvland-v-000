# Character belongs to an actor
# Character belongs to a show
# Character has a catchphrase
# Character can build its associated show
# Character can chain-build associations to which it belongs
class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    self.name + " always says: " + self.catchphrase
  end
end
