class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  belongs_to :network

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(attribute)
    self.show = Show.create(attribute)
  end
end
