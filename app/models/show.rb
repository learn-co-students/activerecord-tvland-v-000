class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network


  #def build_network(hash)
    #can build an associated network
    #Character can chain-build associations to which it belongs
    # to do this, the show model has to define its relationship with network
    #show.build_network(:call_letters => "NBC")
    #expect(show.network.call_letters).to eq("NBC")
  #end



end
