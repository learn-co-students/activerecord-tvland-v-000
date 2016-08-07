class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
  	firstname = self.first_name
  	lastname = self.last_name
  	"#{firstname} #{lastname}"
  end

  def list_roles
  	character = self.characters.map do |x|
  		"#{x.name} - #{x.show.name}"
  	end
  end
end
