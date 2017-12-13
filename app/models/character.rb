class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def says_that_thing_you_say
    binding.pry
  end

end
