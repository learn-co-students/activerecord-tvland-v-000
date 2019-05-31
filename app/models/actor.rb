class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    f = self.first_name
    f.concat " #{self.last_name}"
  end
  
  def list_roles
    # self.shows.collect do |o|
    #   s = o.name
    # end
    # self.characters.collect do |o|
    #   c = o.name
    # end
    # binding.pry
    s = self.shows
    c = self.characters
    c.concat " #{s}"
  end
  
end