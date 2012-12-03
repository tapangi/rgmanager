class Event < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :network
  # setup for permission scheme
  has_many :roles, :as => :authorizable
  #applications to participate, coach, volunteer
  has_many :participant_applications
  has_many :coach_applications
  has_many :volunteer_applications

  #has_many :applicants, :through => :participant_applications, :source => :user
  #has_many :coach_applications, :through => :participant_applications, :source => :user

  # applicants coaches, participants, volunteers, organizers
  has_many :participants,  :through => :roles, :source => :user, :conditions => "name = 'participant'"
  has_many :coaches, :through => :roles, :source => :user, :conditions => "name = 'coach'"
  has_many :volunteers,  :through => :roles, :source => :user, :conditions => "name = 'volunteer'"
  has_many :organizers, :through => :roles, :source => :user, :conditions => "name = 'organizer'"


end
