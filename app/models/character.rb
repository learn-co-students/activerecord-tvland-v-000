class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  has_one :genre, through: :show

  def say_that_thing_you_say
    "#{name} always says: #{catchphrase}"
  end
end
