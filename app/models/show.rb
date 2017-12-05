class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  
  # def build_network(nw)
  #   nw[:call_letters]
   
  # end
end