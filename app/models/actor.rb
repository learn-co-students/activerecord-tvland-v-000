class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + ' ' + self.last_name
  end

  def list_roles
    # TODO: build a method on actor that will return an array of
    # strings in the form "#{character_name} - #{show_name}"
    c_s = []
    characters = self.characters
    characters.each do |c|
      character_name = c.name
      s_id = c.show_id
      show_name = Show.find(s_id).name
      c_s << "#{character_name} - #{show_name}"
    end
    c_s
  end
end
