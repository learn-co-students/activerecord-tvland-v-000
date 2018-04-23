class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :charaters
    belongs_to :network

end
