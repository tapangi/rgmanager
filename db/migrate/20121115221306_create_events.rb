class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :start_date
      t.date :end_date
      t.string :picture
      t.timestamps
    end
  end
end
