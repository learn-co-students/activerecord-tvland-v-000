class Show < ActiveRecord::Base
  has_many :characters
  has_many :networks
  belongs_to :network

  def build_xxx(attr={})
  end

end
