class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def actor=(actor)
    @actor = actor
    actor.characters << self
  end
  #binding.pry

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def method_name

  end


end
