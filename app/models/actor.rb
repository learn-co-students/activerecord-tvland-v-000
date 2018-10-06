class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name = self.first_name + " " + self.last_name
    name
  end

  def list_roles
    # TODO: build a method on actor that will return an array of
    # strings in the form "#{character_name} - #{show_name}"
    self.characters.all.collect do |each_char|
      each_char.name + " - " + each_char.show.name
    end
  end
end
