class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    characters.map {|char| "#{char.name} - #{char.show.name}"}
  end

end
# TODO create a list_roles method
# TODO: build a method on actor that will return an array of
# strings in the form "#{character_name} - #{show_name}"
