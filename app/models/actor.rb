class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows

  def full_name
    "#{first_name} #{last_name}" 
  end 

  def list_roles 
  self.characters.map {|character| "#{
      character.name} - #{character.show.name}"}.join(", ")
  end 
end