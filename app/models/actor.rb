class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    fullname = "#{self.first_name} #{self.last_name}"
    fullname
  end

  def list_roles
    roles = characters.collect{|c| "#{c.name} - #{c.show.name}"}
    roles
  end
end
