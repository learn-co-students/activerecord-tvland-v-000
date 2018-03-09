class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  #needs genre= method
  # def build_network(network)
  #   binding.pry
  #   self.network.call_letters = network
  # end
end
