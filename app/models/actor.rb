class Actor < ActiveRecord::Base
  has_many  :characters
  has_many  :shows, through: :characters

  




end  #  End of Class
