class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  belongs_to :actor
end