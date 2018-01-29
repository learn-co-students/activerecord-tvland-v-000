require 'pry'
class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  
  def say_that_thing_you_say
     self.name + " always says: " + self.catchphrase 
  end
  
  def build_show(name:)
      self.show = Show.new(name: name)
  end
  
  def self.build_network(call_letters:)
      self.show.network = Network.new(call_letters: call_letters)
  end
end