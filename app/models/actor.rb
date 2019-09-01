class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
end

def full_name
  name = "#{self.first_name}, #{self.last_name}"
end

# def list_roles
#   roles_list
#   character_array = self.characters.map { |character| character.name}
# end
