class Show < ActiveRecord::Base

  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(args)
    self.network = Network.find_or_create_by(args)
  end

end
