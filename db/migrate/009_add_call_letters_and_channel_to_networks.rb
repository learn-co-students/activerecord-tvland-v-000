class AddCallLettersAndChannelToNetworks < ActiveRecord::Migration
  def change
    add_column :networks, :call_letters, :string
    add_column :networks, :channel, :integer
  end
end
