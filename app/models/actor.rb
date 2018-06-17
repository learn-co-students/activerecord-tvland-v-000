class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  # attr_accessor: first_name, last_name

  def full_name
    # actor = self.find_by first_name:
    self.first_name + ' ' + self.last_name
  end
end
