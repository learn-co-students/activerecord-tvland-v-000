#belongs to an actor
#belongs to a show
#has a catchphrase
#can build its associated show
#can chain-build associations to which it belongs

class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end
