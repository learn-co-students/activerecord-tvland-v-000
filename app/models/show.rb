class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(call_letters_hash)
   self.network = Network.create(call_letters_hash)    
  end

end