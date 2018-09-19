class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    chars = self.characters
    if chars.length == 1
      char = chars[0]
      "#{char.name} - #{char.show.name}"
    elsif chars.length > 1
      chars.each do  |a|
        "#{char.name} - #{char.show.name}"
      end
    end
  end
end
