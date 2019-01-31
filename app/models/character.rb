class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :character
  
  def say_that_thing_you_say
  end

end