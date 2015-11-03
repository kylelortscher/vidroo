class Like < ActiveRecord::Base
	belongs_to :user
	belongs_to :video

	validates_uniqueness_of :user, scope: :video
	validates :user_id, presence: true
end
