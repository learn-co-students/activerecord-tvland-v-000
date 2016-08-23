class Actor < ActiveRecord::Base
  has_many :shows, through: :characters
  has_many :characters

  def full_name
    full_name_array = []
    full_name_array << self.first_name
    full_name_array << self.last_name
    full_name = full_name_array.join(" ")
    full_name
  end

  def list_roles
    roles = []
    self.characters.each do |character|
      roles << "#{character.name} - #{character.show.name}"
    end
    roles
  end

end
