class Actor < ActiveRecord::Base
	has_many :characters
  has_many :shows, through: :characters

  	def full_name
  		return "#{first_name} #{last_name}"
  	end

  	def list_roles
  		array =[]
  		characters.each {|character| array << "#{character.name} - #{character.show.name}"}
  		array.first
  	end
end