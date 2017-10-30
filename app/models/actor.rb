class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters.each do |a|
      return "#{a.name} - #{a.show.name}"
    end
  end
end
