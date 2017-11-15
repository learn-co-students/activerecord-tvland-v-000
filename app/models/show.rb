class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def build_network(hash_call_letters) # ie {:call_letters=>"Fox"}
    # binding.pry
  end
end
