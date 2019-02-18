require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
      "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    self.shows.each do |show|
      roles << "#{Character.find_by(show_id: show.id).name} - #{show.name}"
    end
    roles
  end


end
