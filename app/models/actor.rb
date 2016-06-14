class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters


  # def create
  #   emilia = Actor.new(:first_name => "Emilia", :last_name => "Clarke")
  # end 

  def full_name
    "#{self.first_name} #{self.last_name}"
  end 

  
end