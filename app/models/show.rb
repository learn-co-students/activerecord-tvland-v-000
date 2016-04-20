class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
   has_many :actors, through: :characters

   def build_network(params)
     self.network = Network.new(params)
   end

 end