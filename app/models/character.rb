class Character < ActiveRecord::Base
  has_many :networks
  belongs_to :actor
  belongs_to :show
end
