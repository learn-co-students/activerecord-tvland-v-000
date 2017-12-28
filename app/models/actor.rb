class Actor < ActiveRecord::Base
  has_many :characters
  belongs_to :show

end
