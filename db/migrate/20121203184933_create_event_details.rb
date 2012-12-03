class CreateEventDetails < ActiveRecord::Migration
  def change
    create_table :event_details do |t|
      t.references :event
      t.string :lang
      t.text :intro_text
      t.text :sponsor_intro
      t.text :faq
      t.timestamps
    end
    add_index :event_details, :lang
  end
end
