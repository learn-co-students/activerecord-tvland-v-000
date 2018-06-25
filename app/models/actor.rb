class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
    #binding.pry
  end

  def list_roles

    array_1 = []
    self.characters.each do |c|
      array_1 = "#{c.name} - #{c.show.name}"
      #binding.pry
    end
    array_1
  end


end
