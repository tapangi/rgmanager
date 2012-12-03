class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :identifies_as, :string
    add_column :users, :tshirt_size, :string, :length => 2
    add_column :users, :dietary_restrictions, :string
  end
end
