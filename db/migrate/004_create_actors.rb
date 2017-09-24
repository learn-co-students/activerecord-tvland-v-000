class CreateActors < ActiveRecord::Migration
  #class should match the name of the file
  #create a change fxn to make the migration
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end