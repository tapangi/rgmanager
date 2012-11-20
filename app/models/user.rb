class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #
  # :lockable, :timeoutable and :omniauthable
  devise :token_authenticatable, :confirmable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :roles
  has_many :networks, :through => :roles, :source => :authorizable, :source_type => 'Network', :group => "networks.id"

  validates_presence_of :first_name, :last_name
end
