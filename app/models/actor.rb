class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name(first_name: nil , last_name: nil)
    "#{self.first_name} #{self.last_name}"
  end
end
