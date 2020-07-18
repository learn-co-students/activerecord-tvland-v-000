class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def build_network(name)
      self.network=Network.new(name)
    end

end