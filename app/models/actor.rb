class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    p "#{first_name} #{last_name}"
  end

  def list_roles
    "#{self.characters.first.name} - #{self.shows.first.name}"
  end
end