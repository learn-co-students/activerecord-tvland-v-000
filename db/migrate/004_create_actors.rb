class CreateActors < ActiveRecord::Migration[4.2]
  def change
    create_table :actors do |t|
      t.text    :first_name
      t.text    :last_name
    end
  end
end
