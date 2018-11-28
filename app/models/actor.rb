class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name}" " " "#{self.last_name}"
  end

  def list_roles
     "#{self.characters.name} - #{self.shows.name}"
    # build a method on actor that will return an array of
    # strings in the form "#{character_name} - #{show_name}"
  end
end
