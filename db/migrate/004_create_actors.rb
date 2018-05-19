class CreateActors < ActiveRecord::Migration[4.2]
  def change
    create_table :actors do |t|
      t.string :full_name
      t.sting :list_roles
    end
  end
end
