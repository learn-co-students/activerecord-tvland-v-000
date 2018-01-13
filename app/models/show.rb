class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network


  def build_network(attributes)
    new_network = Network.new(attributes)
    self.network = new_network
  end
  
end
