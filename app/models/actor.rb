class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :character

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.collect { |a|
      "#{a.name} - #{a.show.name}"
    }
  end
end
