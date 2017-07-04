class Character < ActiveRecord::Base
  belongs_to :actors
  belongs_to :shows
end
