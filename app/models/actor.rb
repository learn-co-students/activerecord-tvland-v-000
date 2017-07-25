class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters
#binding.pry 

  def full_name 
    "#{self.first_name} #{self.last_name}"
  end 

  def list_roles
    characters.collect do |character|
      "#{character.name} - #{character.show.name}"
      #binding.pry 
    end 
  end 
  
end