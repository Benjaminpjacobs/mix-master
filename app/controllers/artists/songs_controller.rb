class Artists::SongsController < ApplicationController
  before_action :set_artist

  def index
    @songs = Song.order('title ASC')
  end
  
  def new
    @song = Song.new
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :'artists/songs/new'
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy

    redirect_to artist_songs_path(@artist)
  end

    private

    def song_params
      params.require(:song).permit(:title)
    end

    def set_artist
      @artist = Artist.find(params[:artist_id])
    end
    
end