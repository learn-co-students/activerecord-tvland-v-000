class UpdateActors< ActiveRecord::Migration
  def change
    change_column :actors, :last_name, :string
  end
end
