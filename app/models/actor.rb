class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    self.characters.collect {|c| c.name}.join + " - " + self.shows.collect {|s| s.name}.join
  end
end