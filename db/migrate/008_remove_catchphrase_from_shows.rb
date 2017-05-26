class RemoveCatchphraseFromShows < ActiveRecord::Migration[4.2]
  def change
    remove_column :shows, :catchphrase
  end
end
