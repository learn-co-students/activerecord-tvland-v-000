class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    shows = []
    self.shows.each {|s| shows << s.name}

    characters = []
    self.characters.each {|c| characters << c.name}

    return "#{characters.join} - #{shows.join}"
  end
end
