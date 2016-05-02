class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    list = ""
    self.characters.map do |role|
      list = "#{role.name} - #{role.show.name}"
    end
    list
  end



end