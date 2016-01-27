class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  
#     expect(urkel.say_that_thing_you_say).to eq("#{urkel.name} always says: #{urkel.catchphrase}")
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end