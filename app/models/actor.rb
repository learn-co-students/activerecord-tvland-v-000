class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
  	"#{self.first_name} #{self.last_name}"
  end

  def list_roles
  	binding.pry
  	roles=[]
  	self.characters.each do |char|
  		roles << "#{char.name} - #{self.shows.find(char.show_id).name}"
	end
	roles[0]
  end

end