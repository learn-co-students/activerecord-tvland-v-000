class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    #this is the official solution, which I've added in here for reference
    # characters.collect do |character|
    #   "#{character.name} - #{character.show.name}"
    # end

    a = nil
    b = nil
    c = []
    self.characters.each do |c|
      a ="#{c.name}"
    end

    self.shows.each do |s|
      b ="#{s.name}"
    end

    c << "#{a} - #{b}"
  end
end
