class Character < ActiveRecord::Base

  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    self.name + " always says: " + self.catchphrase

    #expect(urkel.say_that_thing_you_say).to eq("#{urkel.name}
    #always says: #{urkel.catchphrase}")

  end


end
