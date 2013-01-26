class Network < ActiveRecord::Base
  attr_accessible  :country_alpha2_code, :state_province, :city
  has_many :roles, :as => :authorizable
  acts_as_gmappable
  mount_uploader :network_banner, NetworkBannerUploader
  has_many :events
  validates_presence_of :city, :country_alpha2_code

  def gmaps4rails_address
    #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    #"#{self.city}," + (self.state_province.present? ? "#{self.state_province}, " : "") +" #{self.country_name}"
    name
  end

  def country_name
    Carmen::Country.coded(country_alpha2_code).name
  end
  def name
    if country_alpha2_code == "US"
      "#{self.city}," + (self.state_province.present? ? " #{self.state_province}" : "")
    else
      "#{self.city}," + (self.state_province.present? ? " #{self.state_province}," : "") +" #{self.country_name}"
    end

  end

end
