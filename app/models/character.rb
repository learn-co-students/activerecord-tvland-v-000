class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def self.say_that_thing_you_say
    character.catchphrase
  end

end
