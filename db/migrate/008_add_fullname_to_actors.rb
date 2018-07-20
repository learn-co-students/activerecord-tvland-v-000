class AddFullnameToActors < ActiveRecord::Migration[4.2]
  def change
    add_column :actors, :full_name, :string
  end
end
