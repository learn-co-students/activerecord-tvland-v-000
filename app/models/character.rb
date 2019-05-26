class Character < ActiveRecord::Base
  belongs to :actor
  belongs to :show
end
