class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
     "#{self.first_name} #{self.last_name}"
  end

  def list_roles
   char = self.characters.map do |t|
      t.name
    end
    char_show = self.shows.map do |t|
      t.name
    end
    "#{char.join} - #{char_show.join}"
  end
end