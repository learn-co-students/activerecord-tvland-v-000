class Character < ActiveRecord::Base

has_many :actors
belongs_to :actor  
belongs_to :show 

def create
  khaleesi = Character.new(:name => "Khaleesi")
end 
  
end