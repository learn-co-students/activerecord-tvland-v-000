class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  #has_many :networks, through: :characters, through: :shows
  
  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    "#{characters.first.name} - #{characters.first.show.name}"
  end


end