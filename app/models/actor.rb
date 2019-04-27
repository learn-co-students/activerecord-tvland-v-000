class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    names = []
    names << self.first_name
    names << self.last_name
    names.join(" ")
  end

  def list_roles
    roles = []
    roles << self.characters.first.name
    roles << self.shows.first.name
    roles.join(" - ")
  end

end
