class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    self.characters.collect {|char| "#{char.name} - #{char.show.name}"}
  end
end
