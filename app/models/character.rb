
class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    self.name + " always says: " + self.catchphrase
  end

  def build_show(show_attributes = {})
    show = Show.create(show_attributes)
    show.characters << self
    self
  end

  def build_network(network_attributes = {})
    network = Network.create(network_attributes)
    network.shows << self.show
  end

end
