class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    # lists all of the characters an an actor has
    self.characters.map do |x|
      "#{x.name} - #{x.show.name}"
    end
  end

end
