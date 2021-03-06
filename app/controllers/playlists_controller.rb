class PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show, :edit]

  def index
    @playlist = Playlist.all
  end

  def new
    @playlist = Playlist.new
    @songs = Song.all
  end

  def create
    @playlist = Playlist.new(playlist_params) 
    if @playlist.save
      redirect_to @playlist
    else
      render :new
    end
  end

  def show
  end

  def edit
    @songs = Song.all()
  end

  def update
    if Playlist.new(playlist_params).valid?
      @playlist = Playlist.update(playlist_params)
      redirect_to @playlist
    else
      @playlist = Playlist.find(params[:id])
      render :edit
    end
  end

  private

    def playlist_params
      params.require(:playlist).permit(:name, song_ids: [])
    end

    def set_playlist
      @playlist = Playlist.find(params[:id])
    end
    
end
