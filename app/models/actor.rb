class Actor < ActiveRecord::Base
  belongs_to :network
  has_many :character
  has_many :show, through: :character
end
