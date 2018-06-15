class RemoveCatchphraseFromActors < ActiveRecord::Migration[4.2]
  def change
    remove_column(:actors, :catchphrase, :string)
  end
end
