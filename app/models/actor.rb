require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.first_name + " " + self.last_name
  end
  
   #build a method on actor that will return an array of
    # strings in the form "#{character_name} - #{show_name}"
    # "characters.name - show.name"
  
  def list_roles
    #binding.pry
     self.characters.collect do |charac|
        "#{charac.name} - #{charac.show.name}"
      end
  end
  
end

