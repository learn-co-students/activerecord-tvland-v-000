class CreateCharacters < ActiveRecord::Migration[5.1]

  def change
    #table name was spelled wrong
    # suppose to be :characters
    # todo: create another migrate file with the correct schema
      create_table :charaters do |t|
        t.string :name
        t.integer :show_id
      end
  end

end
