class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_name = self.first_name
    last_name = self.last_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    self.characters.collect do |c|
     "#{c.name} - #{c.show.name}"
    end
  end
end
