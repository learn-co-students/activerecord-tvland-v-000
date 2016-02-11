class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
# binding.pry
    roles_info = []
    self.characters.each{|c|
      roles_info << c.name
      roles_info << c.show.name

    }

    roles_info.join(" - ")

# binding.pry
  end
end