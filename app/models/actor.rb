class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.collect do |character|
     "#{character.name} - #{character.show.name}"
    end
  end
end




 # def list_roles
  #   roles = 
  #   array_of_characters = self.characters.map {|character| character.name}
  #   array_of_shows = self.shows.map {|shows| shows.name}
  # end