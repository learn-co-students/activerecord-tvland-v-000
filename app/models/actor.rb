class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles

x = []
x << self.characters.first.name
x << "-"
x << self.shows.first.name
x.join(" ")
  end
end
