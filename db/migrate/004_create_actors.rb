class CreateActors < ActiveRecord::Migration[4.2]
  def change
    create_table :actors do |q|
      q.string :first_name
      q.string :last_name
    end
  end
end
