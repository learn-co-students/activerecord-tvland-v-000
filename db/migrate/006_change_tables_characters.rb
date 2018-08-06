class ChangeTablesCharacters < ActiveRecord::Migration[4.2]
    def change

        change_table :characters do |t|
            t.belongs_to :actor, index: true
            t.belongs_to :show, index:true
        end
    end
end