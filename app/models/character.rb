class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(attributes)
    new_show = Show.new(attributes)
    self.show = new_show
  end
  def build_network
    attributes
  end


end
