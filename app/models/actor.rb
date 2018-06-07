class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #expect(emilia.full_name).to eq("Emilia Clarke")
    fullname = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    #expect(emilia.list_roles).to include("Khaleesi - Game of Thrones")
    #binding.pry
    roles = []
    Character.all.each do |characters|
      #binding.pry
      if characters.actor_id == self.id
        roles << "#{characters.name} - #{Show.find_by(id: characters.show_id).name}"
        #binding.pry
      end
    end
    roles
  end

end
