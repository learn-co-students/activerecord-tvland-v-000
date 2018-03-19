class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor


  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(show)
    new_show = Show.create(show)
    self.show = new_show
    new_show
  end
end
