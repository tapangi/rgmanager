class Role < ActiveRecord::Base
  GLOBAL = %w"global_admin"
  NETWORK = %w"member admin"
  EVENT = %w"participant coach organizer volunteer sponsor partner"

  attr_accessible :name, :authorizable, :user
  belongs_to :user
  belongs_to :authorizable, :polymorphic => true

end
