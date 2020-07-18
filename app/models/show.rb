class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(letters)
    new_call = Network.new(letters)
    self.network = new_call
  end
end
