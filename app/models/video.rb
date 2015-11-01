class Video < ActiveRecord::Base
	belongs_to :user
	validates :title, presence: true, length: {in: 3..50 }
	VALID_URL_REGEX = /(youtu\.be\/|yoube\.com\/(watc\?(.*&)?v=|(embed|v)\/))([^\?&"'>]+)/
	validates :url, presence: true, uniqueness: { case_sensitive: false }, length: {in: 9..50}, format: { with: VALID_URL_REGEX }
	validates :user_id, presence: true
end
