class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #
  # :lockable, :timeoutable and :omniauthable
  devise :token_authenticatable, :confirmable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :identifies_as, :tshirt_size

  # attr_accessible :title, :body

  has_many :roles
  has_many :networks, :through => :roles, :source => :authorizable, :source_type => 'Network', :group => "networks.id"

  validates_presence_of :first_name, :last_name

  def role? (name, resource = nil)
    if resource.nil?
      !roles.where(:name => name, :authorizable_type => nil, :authorizable_id => nil).empty?
    else
      if resource.class.name == :class.to_s.camelize
        !roles.where(:name => name, :authorizable_type => resource.to_s).empty?
      else
        !roles.where(:name => name, :authorizable_type => resource.class.name, :authorizable_id => resource.id).empty?
      end
    end
  end
end
