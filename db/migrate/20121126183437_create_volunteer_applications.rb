class CreateVolunteerApplications < ActiveRecord::Migration
  def change
    create_table :volunteer_applications do |t|
      t.string :help_offered
      t.string :status
      t.references :event
      t.references :user

      t.timestamps
    end
    add_index :volunteer_applications, :status
    add_index :volunteer_applications, :event_id
    add_index :volunteer_applications, :user_id
  end
end
