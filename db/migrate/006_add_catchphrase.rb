class AddCatchphrase < ActiveRecord::Migration[4.2]
  def change
    if !column_exists?(:characters, :catchphrase)
      add_column :characters, :catchphrase, :string
    end
  end
end