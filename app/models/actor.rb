class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    char_name = self.characters.collect do |t|
      t.name
    end
    show = self.shows.collect do |t|
      t.name
    end
    "#{char_name.join()} - #{show.join()}"
  end
end
