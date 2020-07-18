class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{Character.first.name} always says: #{Character.first.catchphrase}"
  end
end
