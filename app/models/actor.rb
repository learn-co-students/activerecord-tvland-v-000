class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    # -----MY WAY-----
    # all_roles = []
    # self.characters.each do |character|
    #   all_roles << "#{character.name} - #{character.show.name}"
    # end
    # all_roles
    
    # -----BETTER WAY FROM SOLUTION-----
    # collect returns everything that is returned inside the argument
    characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end