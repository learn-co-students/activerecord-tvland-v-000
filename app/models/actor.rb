class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters
  has_many :networks, through: :shows

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    shows = []
    self.shows.each {|x| shows << x.name}
    characters = []
    self.characters.each {|x| characters << x.name}
    return "#{characters.join} - #{shows.join}"
  end
  
end