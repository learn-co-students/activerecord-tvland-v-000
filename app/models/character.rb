class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    name = self.name
    phrase = self.catchphrase
    "#{name} always says: #{phrase}"
  end
end
