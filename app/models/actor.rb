class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    name = []
    name << self.first_name
    name << self.last_name
    name.join(" ")
  end

  def list_roles
    self.characters.collect {|t| "#{t.name} - #{t.show.name}"}.join
  end

end