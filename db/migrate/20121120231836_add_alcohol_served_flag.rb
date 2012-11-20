class AddAlcoholServedFlag < ActiveRecord::Migration
  def change
    add_column :events, :is_alcohol_served, :boolean, :default => false
  end

end
