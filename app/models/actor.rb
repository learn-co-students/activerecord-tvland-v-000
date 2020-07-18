class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles # instance method called on actor instance.
    # in instance scope, self refers to the actor instance on which #list_roles method is called
    self.characters.map {|c| "#{c.name} - #{c.show.name}"}
  end

end
