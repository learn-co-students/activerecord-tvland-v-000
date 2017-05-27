#Write a migration for the actors table. An actor should have a first_name and a last_name.
class CreateActors < ActiveRecord::Migration[5.0]
  def change
    create_table :actors do |a|
      a.string :first_name
      a.string :last_name
    end
  end
end
