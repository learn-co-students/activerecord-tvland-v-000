class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters
  end


end

expected <ActiveRecord::Associations::CollectionProxy [<Character id: 1, name: "Khaleesi", show_id: 1, catchphrases: nil, actor_id: 1>]> to i
nclude "Khaleesi - Game of Thrones"
