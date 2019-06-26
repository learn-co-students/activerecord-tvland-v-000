class CreateActors < ActiveRecord::Migration[4.2]
    def change
        create_table :actors do |t|
            t.string :full_name
        end
    end

end
