class Event < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :roles, :as => :authorizable
  has_many :applications
  has_many :participants,  :through => :roles, :source => :user, :conditions => "name = 'participant'"
  has_many :coaches, :through => :roles, :source => :user, :conditions => "name = 'coach'"
  has_many :volunteers,  :through => :roles, :source => :user, :conditions => "name = 'volunteer'"
  has_many :organizers, :through => :roles, :source => :user, :conditions => "name = 'organizer'"

  belongs_to :network
end
