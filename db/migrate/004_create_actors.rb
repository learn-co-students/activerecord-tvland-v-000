class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      #t.[datatype] :column
      t.string :first_name
      t.string :last_name
    end
  end
end