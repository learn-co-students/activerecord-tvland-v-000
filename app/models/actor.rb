class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = self.first_name + ' ' + self.last_name
  end

  def list_roles
    self.characters.collect {|c| c.name + ' - ' + Character.find_by(name: c.name).show.name}
  end

end
