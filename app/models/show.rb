require 'pry'
class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def build_network(call_letters:)
    network = Network.new(call_letters: call_letters)
    network.shows << self
  end

end
