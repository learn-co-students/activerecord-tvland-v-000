class DropCatchphraseFromShow < ActiveRecord::Migration
  def change
    remove_column(:shows, :catchphrase)
  end
end
