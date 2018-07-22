class AddFirstAndLastNameToActors < ActiveRecord::Migration[4.2]
    def change
        add_column :actors, :first_name, :string
        add_column :actors, :last_name, :string
    end
end
