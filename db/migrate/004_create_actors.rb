class CreateActors < ActiveRecord::Migration[4.2]
  def change
    create_table :actors do |c|
      c.string :first_name
      c.string :last_name
    end
  end
end
