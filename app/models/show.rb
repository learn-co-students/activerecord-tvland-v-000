class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
  # "#{self.actors.first_name}" + "#{self.actors.last_name}"
  
    self.actors.map do |a|
      a.first_name + " " + a.last_name
    end
  end
  
end