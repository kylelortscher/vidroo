class Video < ActiveRecord::Base
	belongs_to :user
	has_many :likes
	validates :title, presence: true, length: {in: 3..50 }
	VALID_URL_REGEX = /(youtu\.be\/|yoube\.com\/(watc\?(.*&)?v=|(embed|v)\/))([^\?&"'>]+)/
	validates :url, presence: true, length: {in: 9..50}, format: { with: VALID_URL_REGEX }
	validates :user_id, presence: true

	def thumbs_up_total
		self.likes.where(like: true).size
	end

	def thumbs_down_total
		self.likes.where(like: false).size
	end

	def youtube_id(id)
		youtube = id.split("be\/.")
		puts youtube[1]
	end	
end
