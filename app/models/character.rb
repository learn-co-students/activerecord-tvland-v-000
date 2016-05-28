class Character < ActiveRecord::Base

  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    curr_character = self.name
    curr_phrase = self.catchphrase
    char_says = "#{curr_character} always says: #{curr_phrase}"

    #expect(urkel.say_that_thing_you_say).to eq("#{urkel.name}
    #always says: #{urkel.catchphrase}")

  end


end
