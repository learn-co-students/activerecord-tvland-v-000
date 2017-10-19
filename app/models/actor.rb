class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters


  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    list = characters.all.map do |t|
      if t.actor_id == self.id
        "#{t.name} - #{t.show.name}"
      end
    end
  end
end
