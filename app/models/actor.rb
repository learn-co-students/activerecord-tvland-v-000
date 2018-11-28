class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
<<<<<<< HEAD
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    self.characters.each do |character|
      roles << "#{character.name} - #{character.show.name}"
    end
    roles
=======
    
  end

  def list_roles

>>>>>>> 992411e1f641936ad32fe83809b8f87fc2b67df7
  end
end
