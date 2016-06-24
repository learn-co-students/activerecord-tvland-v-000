class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    string = ""
    self.characters.each do |x|
      string << "#{x.name} - #{x.show.name}"
    end
    string
  end
  
end