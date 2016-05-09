class Actor < ActiveRecord::Base

  has_many :shows
  has_many :characters, through: :shows

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    "#{self.roles}"
  end

end
