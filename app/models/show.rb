class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def build_network(hash_call_letters) # ie {:call_letters=>"Fox"}
    new_network = Network.find_or_create_by(hash_call_letters)
    self.network = new_network
    # binding.pry
  end
end
