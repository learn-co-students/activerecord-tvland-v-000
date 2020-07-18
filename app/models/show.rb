class Show < ActiveRecord::Base
  has_many :characters

  def build_network(input)
    self.network = input
  end
end
