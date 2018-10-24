class Character < ActiveRecord::Base
  
  belongs_to :actor 
  belongs_to :show 
  
  def say_that_thing_you_say
    return "#{self.name} always says: #{self.catchphrase}"
  end 
  
    def build_show(show_name)
      self.show = Show.find_or_create_by(show_name)
   end 
  
end