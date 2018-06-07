class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_name + " " + last_name
  end

  def list_roles
    self.characters[0].name + " - " + self.shows[0].name 
  end

end
