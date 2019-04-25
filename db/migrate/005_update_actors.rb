class UpdateActors < ActiveRecord::Migration[4.2]
  def change
      change_column(:actors, :last_name, :string)
  end
end
