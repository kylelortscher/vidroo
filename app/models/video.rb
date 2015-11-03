class Video < ActiveRecord::Base
	belongs_to :user
	has_many :likes
	validates :title, presence: true, length: {in: 3..50 }
	VALID_URL_REGEX = /(youtu\.be\/|yoube\.com\/(watc\?(.*&)?v=|(embed|v)\/))([^\?&"'>]+)/
	validates :url, presence: true, length: {in: 9..50}, format: { with: VALID_URL_REGEX }
	validates :user_id, uniqueness: { case_sensitive: false }, presence: true

	def thumbs_up_total
		self.likes.where(like: true).size
	end

	def thumbs_down_total
		self.likes.where(like: false).size
	end
end
