class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters #belongs to is always singular, has many is alwaus plurals

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters.collect do |t|
    "#{t.name} - #{t.show.name}"
  end
  end

end
