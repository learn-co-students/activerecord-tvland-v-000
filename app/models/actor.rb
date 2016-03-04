class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters


  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    str=""
    characters.each do |ch|
      str ="#{ch.name} - #{shows[ch.show_id-1].name}"
    end
    str
  end
end