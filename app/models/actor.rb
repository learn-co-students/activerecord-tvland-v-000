require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  attr_accessor :first_name, :last_name

  def full_name
    @first_name + " " + @last_name
  end

  # build a method on actor that will return an array of
 # strings in the form "#{character_name} - #{show_name}"
 # binding.pry

  # def list_roles
  #   self.map do |role|
  #     "#{self.characters.name}" - "#{self.shows.name}"
  #   end
  # end




end
