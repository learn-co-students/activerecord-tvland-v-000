class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  #has a catchphrase

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}" #no puts, we want a return value
  end
end
