class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  belongs_to :network

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(attributes = {})
    show = Show.new(attributes)
    show.characters << self
    show
  end

  def build_network(attributes = {})
    network = Network.new(attributes)
    network.characters << self
    network
  end


end
