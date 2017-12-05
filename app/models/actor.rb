class Actor < ActiveRecord::Base
  has_many :characters
  

  def full_name
     "#{self.first_name} #{self.last_name}"   
  end

  def list_roles
    self.characters.map do |c|
      "#{c.name} - #{c.show.name}"
      # binding.pry
    end
    # "#{self.characters.name} - #{self.characters.show} "
  end
end


