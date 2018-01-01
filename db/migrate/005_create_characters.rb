class CreateCharacters < ActiveRecord::Migration

    def change
        create_table :characters do |t|
            t.catchphrase
        end
    end
end
