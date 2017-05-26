class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
      self.first_name + " " + self.last_name
    end

    def list_roles
      role_array = []
      self.characters.each_with_index do |role, ind|
        role_array << "#{role.name} - #{self.shows[ind].name}"
      end
      role_array
    end

end
