class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #expect(emilia.full_name).to eq("Emilia Clarke")
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.collect {|c| "#{c.name} - #{Show.find(c.show_id).name}"}
    #binding.pry
  end

end
