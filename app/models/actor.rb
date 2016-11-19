class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    (self.characters.map { |e| e.name })[0] + " - " + (self.characters.map { |e| e.show.name })[0]
  end

end
