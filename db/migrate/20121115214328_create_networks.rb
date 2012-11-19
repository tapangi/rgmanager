class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :name, :null => false
      t.string :country_alpha2_code, :null => false
      t.string :state_province, :null => false
      t.string :city, :null => false
      t.string :picture
      t.timestamps
    end
  end
end
