class Show < ActiveRecord::Base
  has_many :characters
  has_many :catchphrase, through: :characters
  belongs_to :network
end