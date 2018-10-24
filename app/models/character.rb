class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

    def say_that_thing_you_say
      x = []
      x << self.name
      x << "always says:"
      x << self.catchphrase
      x.join(" ")
    end
end
