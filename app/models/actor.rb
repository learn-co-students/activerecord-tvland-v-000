class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

    def full_name
      return "#{first_name} #{last_name}"
    end

    def list_roles
      self.characters.collect do |c|
        self.shows.collect do |s|
          return "#{c.name} - #{s.name}"
        end
      end
    end
end
