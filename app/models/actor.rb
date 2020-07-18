class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  def full_name
    # binding.pry
    name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # binding.pry
    self.characters.collect {|character| "#{character.name} - #{character.show.name}"}
  end

end
