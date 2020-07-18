require 'pry'
class Character < ActiveRecord::Base
   belongs_to :show
   belongs_to :actor

   def say_that_thing_you_say
      "#{self.name} always says: #{self.catchphrase}"
   end

   def build_show(show)      
      s = Show.new(show)
      self.show = s
   end

   def build_network(network)
      binding.pry
      n = Network.new(network)
      self.network = n
     end
  
end