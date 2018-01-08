class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name}" + " #{self.last_name}"
  end

  def list_roles
    "#{character} - #{show}"
  end

  # Helper methods - #character and #show

  def character
    self.characters.collect {|character| character.name}.join
  end

  def show
    self.shows.collect {|show| show.name}.join
  end

end
