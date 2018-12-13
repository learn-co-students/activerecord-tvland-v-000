class Character < ActiveRecord::Base
  belongs_to :actor #an actor has_many characters
  belongs_to :show #a show has_many characters

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end
