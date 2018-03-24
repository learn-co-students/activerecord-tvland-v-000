class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :character

  def full_name
    full_name = "#{first_name} #{last_name}"
  end

  def list_roles
    roles = []
    for characters.all.each do |character|
      #role = "#{character.name} - "
      roles << role
    #end
    roles
  end

end
