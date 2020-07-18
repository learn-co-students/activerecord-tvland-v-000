class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters.map do |roles|
      "#{roles.name} - #{roles.show.name}"
    end

  end


end
