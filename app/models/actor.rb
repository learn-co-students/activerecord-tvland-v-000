class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name

  end

  def list_roles

  end
end

# Actor
#   has a first and last name (FAILED - 1)
#   has associated characters in an array (FAILED - 2)
#   can build its associated characters (FAILED - 3)
#   can build its associated shows through its characters (FAILED - 4)
#   can list its full name (FAILED - 5)
#   can list all of its shows and characters (FAILED - 6)
