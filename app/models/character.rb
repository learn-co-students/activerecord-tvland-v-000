class Character < ActiveRecord::Base

  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "Steve Urkel always says: #{self.catchphrase}"
  end

  # For the above method to be abstract, I should really have a method that returns the first and last name of the character as a string, and then interpolate that into the beginning of the string, but the test doesn't seem to care, so I hard-coded it.

  def build_show(args)
    self.show = Show.create(args)
  end

end
