class Show < ActiveRecord::Base

  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(args)
    self.network = Network.create(args)
  end

end
