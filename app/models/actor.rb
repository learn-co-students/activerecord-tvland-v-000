class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows,through: :characters

  # def actors
  #   change_table actors
  #     t.string :first_name
  #     t.string :last_name
  # end
  

end
