class CreateCatchphrase < ActiveRecord::Migration[4.2]

  def change
    add_column(:characters, :catch_phrase, :string)
  end



end
