class AddCatchphraseToCharacters < ActiveRecord::Migration[5.0]
    def up
    end

    def down
    end

    def change
      add_column :characters, :catchphrase, :string
    end
end
