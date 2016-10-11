class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show_id

  def say_that_thing_you_say
  end

end
