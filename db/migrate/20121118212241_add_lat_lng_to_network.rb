class AddLatLngToNetwork < ActiveRecord::Migration
  def change
    add_column :networks, :latitude, :decimal,  :precision => 10, :scale => 6, :null => false, :default => 0
    add_column :networks, :longitude, :decimal, :precision => 10, :scale => 6, :null => false, :default => 0
  end
end
