class Network < ActiveRecord::Base
  attr_accessible :name, :country_alpha2_code, :state_province, :city
  has_many :roles, :as => :authorizable
  def country_name
    Carmen::Country.coded(country_alpha2_code).name
  end
end
