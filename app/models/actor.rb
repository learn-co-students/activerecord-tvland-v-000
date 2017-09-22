class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_name+" "+last_name
  end

  def list_roles
    roles = []
    characters.each {|c| roles << c.name+" - "+c.show.name}
    roles
  end

end
