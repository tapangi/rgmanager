class RemoveNameAndAddGmaps < ActiveRecord::Migration
  def up
    remove_column :networks, :name
    add_column :networks, :gmaps, :boolean
  end

end
