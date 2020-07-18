class CreateActors < ActiveRecord::Migration[5.2]
  
  def change    #actors should have first & last name
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
  end 
 end 
end 