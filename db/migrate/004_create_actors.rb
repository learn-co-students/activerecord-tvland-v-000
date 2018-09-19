class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |a|
      a.string :first_name
      a.string :last_name
    end
  end
end
