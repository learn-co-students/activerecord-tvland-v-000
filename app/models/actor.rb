class Actor < ActiveRecord::Base
  has_many :shows
  has_many :characters, through: :shows

  def full_name
    puts "#{self.first_name} #{self.last_name}"
  end
end
