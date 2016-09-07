class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    say = "#{self.name} always says: #{self.catchphrase}"
  end

  def build_network(attributes)
    self.build_show.build_network(attributes)
  end
end
