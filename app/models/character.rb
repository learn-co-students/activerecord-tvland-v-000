class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(args)
    new_show = Show.create(args)
    new_show.characters << self
    new_show
  end
end
