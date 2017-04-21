class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    binding.pry
    phrase = self.name + " always says: " + self.catchphrase
    phrase
  end


end
