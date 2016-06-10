class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(hash)
    show = Show.create(hash)
    show.characters << self
  end

  def build_network
  end
end