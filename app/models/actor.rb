class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
    full_name
  end

 def list_roles
   characters_and_shows = []
   self.characters.each do |character|
  characters_and_shows << "#{character.name} - #{character.show.name}"
end
characters_and_shows
 end

end
