#An actor has many characters and has many shows through characters.
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters  

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    character_name = self.characters.map do |character| 
      character.name
    end
    show_name = self.shows.map do |show|
      show.name
    end
    "#{character_name[0]} - #{show_name[0]}"
  end
  
end




