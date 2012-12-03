class AddFieldsToEvents < ActiveRecord::Migration
  def change

    add_column :events, :applications_open_date, :datetime
    add_column :events, :applications_close_date, :datetime
    add_column :events, :decision_date, :date

    add_column :events, :location_address, :string

    add_column :events, :status, :string


    add_column :events, :default_lang, :string
    #add_column :events, :sponsor_intro, :text
    #add_column :events, :faq, :text

    add_index :events, :status
    add_index :events, :applications_open_date
    add_index :events, :applications_close_date
    add_index :events, :start_date
    add_index :events, :end_date
    add_index :events, :default_lang
  end
end
