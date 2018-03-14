class CreateActors < ActiveRecord::Migration[4.2]
  def change
    create_table :actors do |table|
      table.string :last_name
      table.string :first_name
    end
  end
end
