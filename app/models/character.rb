class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  

  def say_that_thing_you_say
    return "#{self.name} always says: #{self.catchphrase}"
  end

end

#NoMethodError:
#undefined method `call_letters' for nil:NilClasss) 