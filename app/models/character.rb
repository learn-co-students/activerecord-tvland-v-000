class Character < ActiveRecord::Base
  belongs_to :shows

  def say_that_thing_you_say
    self.catchphrase
  end
end
