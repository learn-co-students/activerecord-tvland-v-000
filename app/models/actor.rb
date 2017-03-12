class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  has_many :networks, through: :shows

  def full_name
    [self.first_name, self.last_name].join(' ')
  end

  def list_roles
    self.characters.collect {|role| "#{role.name} - #{role.show.name}"}.first
  end

end
