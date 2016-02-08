class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  has_many :networks, through: :shows

  def say_that_thing_you_say
    phrase = []
    phrase << self.name
    phrase << self.catchphrase
    phrase.join(" always says: ")
  end

end