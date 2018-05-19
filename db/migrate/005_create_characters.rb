class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :character do |t|
      t:string :name
      t.string :say_that_thing_you_say
    end
  end
end
