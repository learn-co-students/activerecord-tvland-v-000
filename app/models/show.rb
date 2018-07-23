class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(whatever)
    network_found = Network.create(whatever)
    self.network_id = network_found.id

  end


end
