require 'pry'

class Character < ActiveRecord::Base

belongs_to :actor  
belongs_to :show

   
def say_that_thing_you_say
  "Steve Urkel always says: #{self.catchphrase}"
end

# def build_show(name: = "Jules Cobb")
#   show = show.build_show(name: = "Jules Cobb") 
# end 
# def build_network
# end 
    # jules_cobb = Character.new(:name => "Jules Cobb")
    # jules_cobb.build_show(:name => "Cougar Town")
    # expect(jules_cobb.show.name).to eq("Cougar Town")
    
end