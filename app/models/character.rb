class Character < ActiveRecord::Base
  has_many :characters
  has_many :shows, {:through=>:characters, :source=>"show"}
  belongs_to :actor
  belongs_to :show
end
