class Actor < ApplicationRecord
  has_many :characters
  has_many :shows, through :characters
end

class Character < ApplicationRecord
  belongs_to :actors
  belongs_to :shows
end

class Show < ApplicationRecord
  has_many :characters
  has_many :actors, through :characters
end
