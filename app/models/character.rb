class Character < ApplicationRecord
   belongs_to :shows
   belongs_to :actors
end

class Character < ActiveRecord::Base

end


def say_that_thing_you_say
  return Character.find_by_sql("SELECT characters.catchphrase")
end
