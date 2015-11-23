class PlaylistsController < ApplicationController
  
#  before_action :set_playlist, only: [:show, :edit, :update, :destroy]
#  before_action :set_user, only: [:new, :create]


  def index
    @playlist = Playlist.all
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def add_movie
    MoviePlaylistMap.new(params)
    redirect_to @playlist
  end



  def new
    @playlist = Playlist.new
  end

  def edit
    @playlist = Playlist.find(params[:id])
    @movies = Movie.all
  end

  def create
    @playlist = Playlist.new(playlist_params) #A moze playlist params zmienic?
    
      if @playlist.save
        redirect_to @playlist
      else
        render 'new'
      end
  end

  def update
    @playlist = Playlist.find(params[:id])

      if @playlist.update(playlist_params)
        redirect_to @playlist    #alt playlists_path(playlist)?
      else
        render 'edit'
      end    
  end

  def destroy
      @playlist = Playlist.find(params[:id]).destroy
      redirect_to(playlists_path)
  end

private
  def playlist_params
    params.require(:playlist).permit(:title, :description)
  end
end
