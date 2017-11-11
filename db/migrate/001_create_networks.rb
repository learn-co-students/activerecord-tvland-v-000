class CreateNetworks < ActiveRecord::Migration
  #define a change method in which to do the migration
  def change
    create_table :networks do |t|
      t.string :call_letters
      t.integer :channel
    end
  end
end
