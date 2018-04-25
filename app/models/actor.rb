require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :show, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    emilia = Actor.new(:first_name => "Emilia", :last_name => "Clarke")
    khaleesi = Character.new(:name => "Khaleesi")
    khaleesi.actor = emilia
    khaleesi.save
  end
end
