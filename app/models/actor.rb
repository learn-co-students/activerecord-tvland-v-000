class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    until roles.count == self.shows.count
      roles << "#{self.characters[roles.count].name} - #{self.characters[roles.count].show.name}"
    end
    roles[0]
  end

end
