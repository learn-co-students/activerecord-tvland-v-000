class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
      arr =[]
      arr << "#{self.name} always says: #{self.catchphrase}"
      arr.join("]")
      #binding.pry

  end
end
