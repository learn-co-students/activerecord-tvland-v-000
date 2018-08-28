class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #can list its full name
    self.first_name + " " + last_name
  end

  def list_roles
    characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
    # actor = Actor.new(:first_name => first_name, :last_name => last_name)
    # character = Character.new(:name => name)
    # character.actor = actor
    # show = Show.new(:name => name)
    # character.show = show
    # character.save
    #"#{character_name}" - "#{show_name}"

end
