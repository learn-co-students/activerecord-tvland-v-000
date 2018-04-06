require 'pry'
class Character < ActiveRecord::Base

  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
     "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(hash)
    @s = Show.create(hash)

    self.show = @s

  end

  # def build_network(network_hash)
  #
  #   n = Network.create(network_hash)
  #   @s.network = n
  #   n.call_letters
  #   end
end
