class Actor < ActiveRecord::Base
  has_many :shows
  has_many :shows, through: :characters

def full_name
end

end
