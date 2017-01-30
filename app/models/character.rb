class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show #add network id
  belongs_to :network

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end
