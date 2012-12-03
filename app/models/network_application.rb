class NetworkApplication < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
end
