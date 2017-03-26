class CreateActors < ActiveRecord::Migration

  def change
    create_table(:actors) do |tbl|
      tbl.string :first_name
      tbl.string :last_name
    end
  end
end
