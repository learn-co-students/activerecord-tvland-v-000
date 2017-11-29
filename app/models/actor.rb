class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    char = self.characters[0].name
    show = self.characters[0].show.name
    "#{char} - #{show}"
  end
end
