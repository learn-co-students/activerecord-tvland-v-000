class CreateActors < ActiveRecord::Migration[5.0]
    def up
    end

    def down
    end

    def change
      create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      end
    end
end
#https://learn.co/tracks/full-stack-web-dev-with-react/orms-and-activerecord/activerecord/writing-our-own-migrations
#run rake db:migrate after code completion
