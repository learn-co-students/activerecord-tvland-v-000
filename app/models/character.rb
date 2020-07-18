class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(attr = {})
    show = Show.create do |x|
      x.name = attr[:name]
      x.day = attr[:day] || nil
      x.season = attr[:season] || nil
      x.genre = attr[:genre] || nil
    end
    self.show = show
  end
end
