class movie_playlist_maps < ActiveRecord::Base
	belongs_to :movie
	belongs_to :playlist
end