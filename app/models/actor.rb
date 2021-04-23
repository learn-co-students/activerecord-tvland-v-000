class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    # self.first_name + last_name
    p "#{first_name} #{last_name}"
  end
end