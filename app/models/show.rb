class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def call_letters
    self.network.call_letters
  end
end
