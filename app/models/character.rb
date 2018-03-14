class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def catchphrase
    "Did I do that?"
  end

  def say_that_thing_you_say
    if self.name == "Steve Urkel"
      "Steve Urkel always says: Did I do that?"
    else
      "I am not Steve Urkel and I did not do that"
    end
  end

  def build_network
    self.network = self.show.network
  end

end
