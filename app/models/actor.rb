class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    names = []
    names << self.first_name
    names << self.last_name
    names.join(" ")
  end

end
