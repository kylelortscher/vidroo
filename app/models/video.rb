class Video < ActiveRecord::Base
	searchkick
	before_save { self.vidchooser = [*('A'..'Z')].sample(8).join }
	before_save { self.game = game.downcase }
	belongs_to :user
	has_many :likes
	has_many :favorite_videos
	has_many :favorited_by, through: :favorite_videos, source: :user
	validates :title, presence: true, length: {in: 3..50 }
	VALID_URL_REGEX = /(youtu\.be\/|yoube\.com\/(watc\?(.*&)?v=|(embed|v)\/))([^\?&"'>]+)/
	validates :url, presence: true, uniqueness: { case_sensitive: false }, length: {in: 9..50}, format: { with: VALID_URL_REGEX }
	validates :user_id, presence: true
	validates :game, presence: true
	validates :channel, presence: true, length: {in: 2..50}

	def thumbs_up_total
		self.likes.where(like: true).size
	end

	def thumbs_down_total
		self.likes.where(like: false).size
	end
end
