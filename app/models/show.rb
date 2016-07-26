class Show < ActiveRecord::Base
  belongs_to :actor
  has_many :characters
  belongs_to :network

end
