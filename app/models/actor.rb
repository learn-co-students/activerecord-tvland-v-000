require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    fn = []
    fn << self.first_name
    fn << self.last_name
    fn.join(" ")
  end

  def list_roles
    self.characters.collect {|c| "#{c.name} - #{c.show.name}"}.join
  end

 


end