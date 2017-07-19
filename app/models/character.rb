class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :shows

  def say_that_thing_you_say
    puts "#{self.catchphrase}"
  end

end
