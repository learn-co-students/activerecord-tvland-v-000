class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
      return "#{first_name} #{last_name}"
  end

    def list_roles
        characters.map do |char|
            "#{char.name} - #{char.show.name}"
        end.join('')
    end
end
