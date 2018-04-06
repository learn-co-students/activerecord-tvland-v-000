require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(hash)

    n = Network.create(hash)
    self.network_id = n.id
    self.network = n
    n.call_letters


    end
  end
