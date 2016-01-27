require_relative './network.rb'

class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(attributes)
    network=Network.create(attributes)
    network.shows << self
  end
end