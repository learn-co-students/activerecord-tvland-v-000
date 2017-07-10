class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      # defining columns is as simple as t.[datatype] :column
      t.string :first_name
      t.string :last_name
    end
  end
end
