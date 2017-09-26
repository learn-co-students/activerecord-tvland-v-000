class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    x = []
    self.characters.each do |t|
      x << t.name + " - " + t.show.name
    end
    x
  end
end
