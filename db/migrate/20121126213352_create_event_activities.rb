class CreateEventActivities < ActiveRecord::Migration
  def change
    create_table :event_activities do |t|
      t.string :title
      t.text :description
      t.date :date
      t.time :start_time
      t.time :end_time
      t.references :event
      t.timestamps
    end

    add_index :event_activities, :event_id
  end
end
