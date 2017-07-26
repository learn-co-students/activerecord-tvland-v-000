class Character < ActiveRecord::Base
  belongs_to :actors
  belongs_to :shows
  
#  def build_show(show)
#    show = Show.new(show)
#  end
  def say_that_thing_you_say
    return "#{self.name} always says: #{self.catchphrase}"
  end
end

