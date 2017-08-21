class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
end

# community = Show.create(:name => "Community", :day => "Thursday", :season => "Winter")
