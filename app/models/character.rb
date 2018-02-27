class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def build_show(name)

  end
end
