class Actor < ActiveRecord::Base
  has_many :characters
  has_many :show, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    show_array = []
    self.characters.each do |char|
      show_array << "#{char.name} - #{char.show.name}"
    end
    show_array
  end
end
