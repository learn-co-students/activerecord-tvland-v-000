class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(name)
    #name of the show = parameter
    new_show = Show.create(name)
    self.show = new_show 
  end


end
