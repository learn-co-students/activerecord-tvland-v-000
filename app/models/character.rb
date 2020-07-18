class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    #using the given character's catchphrase
    "#{self.name} always says: #{self.catchphrase}"
  end
end
