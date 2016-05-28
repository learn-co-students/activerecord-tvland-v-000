class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name

    self.first_name+" "+last_name
  end

  def list_roles
    self.characters
  end
  # create a list_roles method
  #  build a method on actor that will return an array of
  # strings in the form "#{character_name} - #{show_name}"

end
