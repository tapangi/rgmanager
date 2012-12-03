class CreateParticipantApplications < ActiveRecord::Migration
  def change
    create_table :participant_applications do |t|
      t.string :programming_experience
      t.string :why_statement
      t.string :os
      t.string :is_of_alcohol_age
      t.string :status
      t.references :event
      t.references :user
      t.timestamps
    end
    add_index :participant_applications, :is_of_alcohol_age
    add_index :participant_applications, :status
    add_index :participant_applications, :event_id
    add_index :participant_applications, :user_id
  end
end
