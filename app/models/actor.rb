class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    fullname = "#{self.first_name} #{self.last_name}"
    fullname
  end
  
  def list_roles
    self.characters.map do |role|
      "#{role.name} - #{role.show.name}"
    end
  end
end