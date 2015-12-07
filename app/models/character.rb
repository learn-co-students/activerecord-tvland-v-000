class Character < ActiveRecord::Base

  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    say_what = []
    say_what << self.name
    say_what << "always says:"
    say_what << self.catchphrase
    say_what.join(" ")
  end
  
end