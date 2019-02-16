require 'pry'
class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters
  belongs_to :network
  
  def build_network(arg = {})
    network = Network.new(arg)
    network.shows << self 
    network.shows
  end
end