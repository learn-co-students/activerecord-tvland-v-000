class AddCatchphrase < ActiveRecord::Migration
  def change
    add_column :characters, :catchphrases, :text
  end
end