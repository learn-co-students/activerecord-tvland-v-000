class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles

    # characters = ""
    # shows = ""

    # self.characters.collect do |char|
    #   characters << char.name
    # end

    # self.shows.collect do |show|
    #   shows << show.name
    # end

    # characters + " - " + shows

    x = self.characters.each do |char|
      return "#{char.name} - #{char.show.name}"
    end
  end

  
end