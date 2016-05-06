class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    role_array = nil

    self.characters.each do |character|
      role_array = "#{character.name} - #{character.show.name}"
    end

    role_array
  end
end