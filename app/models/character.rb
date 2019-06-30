require 'pry'
class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor



  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(show)
    #binding.pry
    x = Show.create(show)
    x.characters << self
    x
    #binding.pry
  end

  def build_network(call_letters)
    #binding.pry
    x = Network.create(call_letters)
    x.shows << self.show
    x
  end




end
