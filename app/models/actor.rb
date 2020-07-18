class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  attr_accessor :show, :name

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  #that lists all of the characters that actor has.

  def list_roles
    list_roles = []
    self.characters.each do |character|
      list_roles << "#{character.name} - #{character.show.name}"
    end
    list_roles
  end
end
