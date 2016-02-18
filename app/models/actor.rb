class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
  	%Q(#{self.first_name} #{self.last_name})
  end
  
  def list_roles
  	roles = ""
  	shows.each do |show|
  		roles += %Q(#{show.characters.where("actor_id=?", self.id).first.name} - #{show.name})
  	end
  	roles
  end
  
end