# DO NOT EDIT!
# If you need to add things to shows, you need to create a new Migration[4.2] file
# and additively change the schema. Always add new Migration[4.2]s to change the db.
class CreateShows < ActiveRecord::Migration[4.2]
  def change
    create_table :shows do |t|
      #primary key of :id is created for us!
      t.string :name
    end
  end
end
