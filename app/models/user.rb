class User < ActiveRecord::Base
  belongs_to :team
  has_one :menu
  # Define roles
  ROLES = %w[admin conference president tailgater author banned]

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, 
  				  :role, :avatar, :team_id, :crop_x, :crop_y, :crop_w, :crop_h
  #Include uploader
  mount_uploader :avatar, AvatarUploader
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar
  
  def crop_avatar
    avatar.recreate_versions! if crop_x.present?
  end
  
  include Amistad::FriendModel
end
