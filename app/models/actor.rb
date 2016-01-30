class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    characters = ""
    shows = ""

    self.characters.collect do |x|
      characters << x.name
    end

    self.shows.collect do |x|
      shows << x.name
    end

    characters + " - " + shows
  end

end #Ends Class