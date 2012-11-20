class AddNetworkToEvent < ActiveRecord::Migration
  def change
    add_column :events, :network_id, :integer
  end
end
