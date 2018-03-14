class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name = "#{self.first_name} #{self.last_name}"
    name
  end

  def list_roles
    # strings in the form "#{character_name} - #{show_name}"
    characters.map {|base| "#{base.name} - #{base.show.name}"}
  end
end
