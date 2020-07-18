require 'pry'
class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def full_name
      binding.pry
    "#{self.first_name} #{self.last_name}"
  end

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

end