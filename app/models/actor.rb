class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    fullname = self.first_name + " " + self.last_name
  end

  def list_roles
    return_array = []
    self.characters.each do |character|
      return_array <<  "#{character.name} - #{character.show.name}"
    end
    return_array
  end

end
