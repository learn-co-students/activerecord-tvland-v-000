class CreateNetwork < ActiveRecord::Migration[4.2]
  def change
    create_table :network do |t|
      t.integer :channel
      t.string :call_letters
    end
  end
end