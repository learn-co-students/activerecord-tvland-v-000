class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
  
  def build_show(atts)
    show = Show.create(atts)
    show.characters << self
    show
  end
  
  def build_network(atts)
    network = Network.create(atts)
    network.characters << self
  end
end