class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    puts "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    Character.map{|a| a.id = self.id }
  end

end
