class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  belongs_to :show

end
