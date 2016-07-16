class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def self.full_name
    name = "#{self.first_name} " + "#{self.last_name}"
    name
  end

  def self.list_roles
    self.order(:characters)
  end
end
