class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def self.build_network
    self.network.call_letters
  end

end
