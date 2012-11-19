class Application < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :event
end
