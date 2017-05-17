class SongsController < ApplicationController

  def index
    # if params[:artist_id]
    #   @artist = Artist.find(params[:artist_id])  
    #   @songs = @artist.songs.order('title ASC')
    # else
      @songs = Song.order('title ASC')
    # end
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

  def destroy
    song = Song.find(params[:id])
    artist = song.artist
    song.destroy

    redirect_to artist_songs_path(artist)
  end

  private

    def song_params
      params.require(:song).permit(:title)
    end
end
