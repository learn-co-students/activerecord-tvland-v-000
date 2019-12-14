class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    self.characters.map do |item|
      item.name
    end
  end
  
  def 
end