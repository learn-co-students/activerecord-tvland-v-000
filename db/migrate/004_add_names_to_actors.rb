class AddNamesToActors < ActiveRecord::Migration
  def change
    create_table :actors do |t| 
      t.string :first_name
      t.string :last_name
    end
  end
end

    # add_column :actors, :first_name, :string
    # add_column :actors, :last_name, :string