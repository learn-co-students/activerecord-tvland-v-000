class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :actor
  belongs_to :network
end