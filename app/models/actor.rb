class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name =  "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.map do |char1|
      "#{char1.name} - #{char1.show.name}"
    end
  end

end
