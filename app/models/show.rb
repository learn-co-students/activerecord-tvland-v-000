class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def build_network(letters)
    self.network = Network.new(letters)
  end
end
