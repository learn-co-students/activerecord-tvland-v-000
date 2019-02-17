class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = characters.map do |role|
      "#{role.name} - #{role.show.name}"
    end
    roles
  end

end
