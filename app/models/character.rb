#* Define a method in the `Character` class, `#say_that_thing_you_say`, using a given character's catchphrase.
#A character belongs to an actor and belongs to a show. MH
class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{name} always says: #{catchphrase}"
  end
end
