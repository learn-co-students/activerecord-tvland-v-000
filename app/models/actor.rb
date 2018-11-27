class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.first_name + " " + self.last_name
  end
  
  def list_roles
    self.characters = characters
    self.shows = shows
    names = []
    show_name = []
    characters.collect do |character|
      names << character.name
    end
    shows.collect do |show|
      show_name << show.name
    end
    names[0] + " - " + show_name[0]
  end
end