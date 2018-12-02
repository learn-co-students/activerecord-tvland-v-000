class Show < ActiveRecord::Base
  belongs_to :network 
  has_many :characters
  has_many :actors, through: :characters
  
  def build_network(call_letters: letters)
    new_network = Network.new(:call_letters => "#{letters}")
    self.network = new_network
  end
  
end