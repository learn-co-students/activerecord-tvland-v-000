class Actor < ActiveRecord::Base

  characters = []
  
  def name
    first_name = @first_name
    last_name = @last_name
  end