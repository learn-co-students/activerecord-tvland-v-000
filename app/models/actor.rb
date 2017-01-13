class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  #that lists all of the characters that actor has.

  def list_roles
    self.collect {|character| "#{character_name} - #{show_name}"}
  end

end
