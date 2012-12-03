class CreateNetworkApplications < ActiveRecord::Migration
  def change
    create_table :network_applications do |t|
      t.references :user
      t.string :city
      t.string :state_province
      t.string :country
      t.string :status
      t.timestamps
    end
    add_index :network_applications, :status
    add_index :network_applications, :user_id
  end
end
