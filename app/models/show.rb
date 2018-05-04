class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  # def build_network(args)
  #   # binding.pry
  #   # new_network = Network.create(args)
  #   # new_network.shows << self
  #   self.build_network(args)
  # end
end
