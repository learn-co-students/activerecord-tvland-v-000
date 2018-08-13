class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters.map do |t|
      "#{t.name} - #{t.show.name}"
    end
  end

end
