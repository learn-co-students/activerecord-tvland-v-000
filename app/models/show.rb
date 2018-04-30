class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters

  def build_network
    network.name
  end
end
