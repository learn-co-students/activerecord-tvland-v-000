class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles

    result_arr = []
    self.characters.each do |char|
      result_arr << "#{char.name} - #{char.show.name}"
    end
    
    result_arr.join(", ")
  end
  
end