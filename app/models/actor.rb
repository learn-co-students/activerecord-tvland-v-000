class Actor < ActiveRecord::Base
  has_many :shows
  has_many :characters, through: :shows

  def self.full_name
    self.first_name + self.last_name
  end
  def self.list_roles
    self.characters.name
  end

end
