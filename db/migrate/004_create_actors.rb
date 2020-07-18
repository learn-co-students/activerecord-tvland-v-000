class CreateActors < ActiveRecord::Migration
  #define a change method in which to do the migration
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end
