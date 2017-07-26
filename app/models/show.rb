class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(call_letters)
    network = Network.find_or_create_by(call_letters)
    self.new.call_letters = call_letters
  end
end
