class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    characters.collect {|c| "#{c.name} - #{c.show.name}"}
  end
end
