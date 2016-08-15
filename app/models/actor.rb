class Actor < ActiveRecord::Base
  has_many :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    self.characters.map do |char|
      "#{char.name} - #{char.show.name}"
    end
  end
end
