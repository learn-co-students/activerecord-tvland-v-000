class CreatesCharacters < ActiveRecord::Migration
    def up
    end

    def down
    end

    def change
      create_table :characters do |t|
      t.string :name
      t.integer :show_id
      end
    end
end
#https://learn.co/tracks/full-stack-web-dev-with-react/orms-and-activerecord/activerecord/writing-our-own-migrations
#run rake db:migrate after code completion
