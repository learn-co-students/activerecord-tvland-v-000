class Character < ActiveRecord::Base
  belongs_to :actor #belongs to so don't pluralize actor or shows
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end
