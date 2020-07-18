class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def list_roles
    characters.map do |char|
      "#{char.name} - #{char.show.name}"
    end
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end