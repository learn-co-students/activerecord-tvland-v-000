class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(hash)
    self.show = Show.new(hash)
  end

  def build_network(hash)
    self.show.network = Network.new(hash)
  end
end
