class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(name)
    self.show = Show.create(name)
  end

  def build_network(call_letters)
    self.show.build_network(call_letters)
  end
end
