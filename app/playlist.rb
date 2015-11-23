class Playlist < ActiveRecord::Base
	belongs_to :user
	belongs_to :movie
	validates :title, presence: true,
			  length: {minimum: 5}
end
