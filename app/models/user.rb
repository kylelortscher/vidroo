class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :videos
  has_many :likes
  has_many :favorite_videos
  has_many :favorites, through: :favorite_videos, source: :video
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable     
  VALID_USERNAME_REGEX = /\A[a-z0-9\-_]+\z/i
  validates :username, presence: true, length: {in: 3..50 }, format: { with: VALID_USERNAME_REGEX }    
end
