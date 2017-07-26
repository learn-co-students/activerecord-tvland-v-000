class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  
#  def build_show(show)
#    show = Show.new(show)
#  end
  def say_that_thing_you_say
    return "#{self.name} always says: #{self.catchphrase}"
  end
end

