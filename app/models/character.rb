class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(show_hash)
    show = Show.create(show_hash)
    self.show_id = show.id
    self.show
  end
end
