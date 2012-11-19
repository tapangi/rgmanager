class Event < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :roles
  has_many :applications
  has_many :participants, :as => :user, :through => :roles, :source => :user, :conditions => "authorizable_type = 'participant'"
  has_many :coaches, :as => :user, :through => :roles, :source => :user, :conditions => "authorizable_type = 'coach'"
  has_many :volunteers, :as => :user, :through => :roles, :source => :user, :conditions => "authorizable_type = 'volunteer'"
  has_many :organizers, :as => :user, :through => :roles, :source => :user, :conditions => "authorizable_type = 'organizer'"
end
