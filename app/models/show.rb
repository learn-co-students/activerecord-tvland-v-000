class Show < ActiveRecord::Base
	has_many :characters
	has_many :actors, through: :characters
	belongs_to :network

	def build_network(call_letter_hash)
		self.network = Network.create(call_letter_hash)
	end
  
end