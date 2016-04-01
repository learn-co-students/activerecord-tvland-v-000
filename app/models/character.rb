class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(name:)
    show = Show.find_or_create_by(name: name)
    self.show = show
    self.show
  end
  
  def build_network(call_letters:)
    network = Network.find_or_create_by(call_letters: call_letters)
    self.show.network = network
    self.show.network
  end

end