class Video < ActiveRecord::Base
	validates :title, presence: true, length: {in: 3..50 }
end
