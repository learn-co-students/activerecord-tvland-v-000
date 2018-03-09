class Character < ActiveRecord::Base
  belongs_to :shows
  belongs_to :actors

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def actor
    self.actor_id.name
  end

end
