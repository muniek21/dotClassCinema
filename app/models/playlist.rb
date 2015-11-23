class Playlist < ActiveRecord::Base
	belongs_to :user
	has_many :movie_playlist_maps
	#belongs_to :movie   do tego trzeba uzyc through
	validates :title, presence: true,
			  length: {minimum: 5}
end


# zmien belong so mobie aby bylo playlsits - taki przyklad jak z tag i tagging
# odczytywanie w krokach   
#{}"through"  tag has many movies thourgh taggings

