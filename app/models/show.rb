class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
	belongs_to :network

	 def build_network(instance_data)
    net = Network.new(instance_data)
    net.shows << self
    net.save
		net
  end
end
