class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    return "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    roles_char = []
    self.characters.each do |rc|
      roles_char << "#{rc.name} - #{rc.show.name}"
    end
    roles_char
  end
end
