class Network < ActiveRecord::Base
  attr_accessible :name, :country_alpha2_code, :state_province, :city
  has_many :roles, :as => :authorizable
  def country_name
    Country[country_alpha2_code].name
  end
end
