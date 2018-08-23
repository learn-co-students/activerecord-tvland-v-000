class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + last_name
  end

  def list_roles
    self.characters.each do |char|
      return "#{char.name} - #{char.show.name}"
    end
  end
end
