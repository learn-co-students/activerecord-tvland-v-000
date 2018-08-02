class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    [self.first_name, self.last_name].join(' ')
  end

  def list_roles
    [self.shows.first.characters[0].name, self.shows.first.name].join(' - ')
  end
end
