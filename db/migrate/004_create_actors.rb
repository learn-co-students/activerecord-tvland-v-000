class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |col|
      col.string :first_name
      col.string :last_name
    end
  end
end 
