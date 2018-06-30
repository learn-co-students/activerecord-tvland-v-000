class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(hash)
    #binding.pry
    new_show = Show.create(name: hash[:name])
    self.show_id = new_show.id
    new_show
  end
end
