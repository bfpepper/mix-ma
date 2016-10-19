class SongsController < ApplicationController
  before_action :find_artist, only: [:new, :create]
  before_action :find_song, only: [:show, :edit, :update]

  def new
    @song = @artist.songs.new
  end

  def create
    @song = @artist.songs.new(song_params)
      if @song.save
        redirect_to song_path(@song)
      else
        render :new
      end
  end

  def show
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to @song
    else
      render :edit
    end
  end

  private

  def song_params
    params.require(:song).permit(:title)
  end

  def find_artist
    @artist = Artist.find(params[:artist_id])
  end

  def find_song
    @song = Song.find(params[:id])
  end

end
