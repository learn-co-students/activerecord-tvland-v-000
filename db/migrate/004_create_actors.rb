class CreateActors < ActiveRecord::Migration
  
  create_table :Actors do |t|
    t.string :first_name
    t.string :last_name
  end
end