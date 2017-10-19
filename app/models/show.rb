class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  has_one :genres
  belongs_to :network

  def build_network(hash)
    self.network = Network.create(hash)
  end
end
