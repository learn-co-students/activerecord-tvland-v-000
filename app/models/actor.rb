class Actor < ActiveRecord::Base
  # Associate the Actor model with the Character and Show model
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end 
  
  def list_roles
    characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end 
  end 
  
end