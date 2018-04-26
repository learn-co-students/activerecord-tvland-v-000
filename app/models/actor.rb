class Actor < ActiveRecord::Base
  belongs_to :show
  has_many :characters

  def full_name
        "#{self.first_name} #{self.last_name}"
  end

  def list_roles
      arr =[]
      id = self.characters.first.show_id
      arr << "#{self.characters.first.name} - #{Show.find(id).name}"
      arr
  end

end
