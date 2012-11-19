class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.references :user
      t.references :event
      t.timestamps
    end
  end
end
