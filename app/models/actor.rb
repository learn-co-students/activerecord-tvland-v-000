class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    full = "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    binding.pry
  end
  
end

  # it "can list all of its shows and characters" do
  #   # TODO create a list_roles method
  #   # TODO: build a method on actor that will return an array of
  #   # strings in the form "#{character_name} - #{show_name}"
  #   emilia = Actor.new(:first_name => "Emilia", :last_name => "Clarke")
  #   khaleesi = Character.new(:name => "Khaleesi")
  #   khaleesi.actor = emilia
  #   got = Show.new(:name => "Game of Thrones")
  #   khaleesi.show = got
  #   khaleesi.save

  #   khaleesi.reload
  #   expect(emilia.list_roles).to include("Khaleesi - Game of Thrones")