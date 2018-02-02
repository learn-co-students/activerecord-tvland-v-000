class Character < ActiveRecord::Base
  belongs_to :actor #belongs to one instance of actor
  belongs_to :show #belongs to one instance of show

  def say_that_thing_you_say
    return "#{self.name} always says: #{self.catchphrase}"
  end

end
