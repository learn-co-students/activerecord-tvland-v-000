class Actor < ActiveRecord::Base
  has_many :characters
  has-many :shows, through :: characters

  # def actors
  # change-table actors
  # t: string, first_name
  # t: string, last_name
  # end





end
