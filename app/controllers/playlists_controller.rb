class PlaylistsController < ApplicationController
  
#  before_action :set_playlist, only: [:show, :edit, :update, :destroy]
#  before_action :set_user, only: [:new, :create]

  def index
    @playlist = Playlist.all
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(user_params)
  end

  def edit
    @playlist = Playlist.find(params[:id])
  end

  def update
    @playlist = Playlist.find(params[:id])
      if @playlist.update(user_params)
        redirect_to playlists_path(playlist)
      else
        render 'edit'
      end    
  end

  def destroy
      Playlist.find(params[:id]).destroy
      redirect_to playlists_path(playlist)
  end
end
