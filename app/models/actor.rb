class Actor < ActiveRecord::Base
  has_many :characters

  def full_name
     "#{self.first_name} #{self.last_name}"   
  end

  def list_roles
    binding.pry
    "#{self.characters.name} - #{self} "
  end
end


