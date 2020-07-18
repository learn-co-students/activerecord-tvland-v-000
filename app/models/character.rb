class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(arg)
    show = Show.create(arg)
    show.characters << self
    self
  end

  def build_network(arg)
    network = Network.create(arg)
    network.shows << self.show
    self
  end
end