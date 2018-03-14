class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name

    self.first_name+" "+last_name
  end

  def list_roles
    roles = []
    self.characters.each do |character|
      roles << "#{character.name} - #{character.show.name}"
    end
    roles
  end
  # create a list_roles method
  #  build a method on actor that will return an array of
  # strings in the form "#{character_name} - #{show_name}"

end
