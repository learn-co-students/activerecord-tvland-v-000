class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
   "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    binding.pry
    char = self.characters.collect {|character| character.name}
    show = self.shows.collect {|show| show.name}
  end
end
