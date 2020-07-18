class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
  #
  # can build an associated network (FAILED - 5)
  belongs_to :network # now it passes
end