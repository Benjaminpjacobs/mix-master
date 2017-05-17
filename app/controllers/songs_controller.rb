class SongsController < ApplicationController
  before_action :set_song, only: [:edit, :show, :destroy]

  def index
    @songs = Song.order('title ASC')
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :'songs/new'
    end
  end

  def show
  end

  def edit
    @artist = @song.artist
  end

  def update
    @song = Song.update(song_params)
    redirect_to song_path(@song)
  end

  def destroy
    @song.destroy

    redirect_to songs_path
  end

  private

    def song_params
      params.require(:song).permit(:title)
    end

    def set_song
      @song = Song.find(params[:id])
    end
end
