class Character < ActiveRecord::Base
  # * A character belongs to an actor and belongs to a show.
  belongs_to :actor
  belongs_to :show
end
