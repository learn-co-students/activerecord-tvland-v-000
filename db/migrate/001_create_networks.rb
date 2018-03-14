class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t| #we get a block variable here for the table
      t.string :call_letters
      t.integer :channel
    end
  end
end
