class Network < ActiveRecord::Base
  attr_accessible :name, :country_alpha2_code, :state_province, :city
  has_many :roles, :as => :authorizable
end
