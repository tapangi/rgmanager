class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.references :authorizable, :polymorphic => true
      t.references :user
      t.string :name
      t.timestamps
    end
    add_index :roles, :authorizable_type, :unique => false
    add_index :roles, :authorizable_id, :unique => false

  end
end
