class Character < ActiveRecord::Base
  # * A character belongs to an actor and belongs to a show.
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

end
