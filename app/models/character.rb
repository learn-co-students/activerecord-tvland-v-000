class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
      "#{self.name} always says: #{self.catchphrase}"
    end

    def full_name
      "#{self.first_name} #{self.last_name}"
    end


end
