class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name}"+" #{last_name}"
  end

  def list_roles
    list = self.characters.collect do |c|
      "#{c.name} - #{c.show.name}"
    end
    list[0]
  end
end