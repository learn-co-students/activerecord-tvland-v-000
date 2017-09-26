class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  has_one :network, through: :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def self.build_show(show)
    show.name
  end
end
