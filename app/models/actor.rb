class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.select(:first_name, :last_name).join(" ")
  end
  
  def list_roles
    self.characters.name  
  end
end