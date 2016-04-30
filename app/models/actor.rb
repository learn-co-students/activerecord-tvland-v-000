class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    role_list = self.characters.map do |ind_character|
      "#{ind_character.name} - #{ind_character.show.name}"
    end
    role_list.join('')
  end
end