require "pry"
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    character = self.characters.map {|c| c.name }
    show = self.shows.map {|s| s.name}
    character[0] + " - " + show[0]
  end
end
