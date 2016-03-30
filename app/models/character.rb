class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(stuff)
    self.show = Show.create(name: stuff[:name])
    self.show
  end

end
