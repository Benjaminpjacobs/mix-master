class SongsController < ApplicationController

  def index
    @artist = Artist.find(params[:artist_id])  
    @songs = @artist.songs.order('title ASC')
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
    @song = Song.find(params[:id])
  end

  def edit
    @artist = Song.find(params[:id]).artist
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.update(song_params)
    redirect_to song_path(@song)
  end

  private

    def song_params
      params.require(:song).permit(:title)
    end
end
