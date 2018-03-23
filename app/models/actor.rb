class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
    full_name
  end

  def list_roles
    self.characters.collect do |char|
      "#{char.name} - #{char.show.name}"
    end
    # binding.pry
  end
end
