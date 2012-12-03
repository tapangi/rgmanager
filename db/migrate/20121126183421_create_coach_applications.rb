class CreateCoachApplications < ActiveRecord::Migration
  def change
    create_table :coach_applications do |t|
      t.string :programming_experience
      t.string :intended_gain
      t.string :os_experience
      t.string :status
      t.references :event
      t.references :user
      t.timestamps
    end
    add_index :coach_applications, :status
    add_index :coach_applications, :event_id
    add_index :coach_applications, :user_id
  end
end
