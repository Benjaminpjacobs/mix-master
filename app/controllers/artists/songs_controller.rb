class Artists::SongsController < ApplicationController

  def index
    @songs = Song.order('title ASC')
  end
  
  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :'artists/songs/new'
    end
  end

    private

    def song_params
      params.require(:song).permit(:title)
    end
end