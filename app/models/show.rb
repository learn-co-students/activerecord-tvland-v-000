class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  
  # Show.create(:name => "Community", :day => "Thursday", :season => "Winter")
end
