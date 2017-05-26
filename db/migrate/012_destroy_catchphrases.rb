class DestroyCatchphrases < ActiveRecord::Migration[4.2]

  def change
    drop_table :catchphrases
  end

end
