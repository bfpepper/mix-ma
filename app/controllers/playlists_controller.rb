class PlaylistsController < ApplicationController
  before_action :find_playlist, only: [:show, :edit]
  before_action :get_all_songs, only: [:new, :edit]

  def index
    @playlists = Playlist.all
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.create(playlist_params)
    redirect_to @playlist
  end

  def show
  end

  def edit
  end

  def update
    @playlist = Playlist.update(playlist_params)
    redirect_to @playlist
  end

private

  def playlist_params
    params.require(:playlist).permit(:name, song_ids: [])
  end

  def find_playlist
    @playlist = Playlist.find(params[:id])
  end

  def get_all_songs
    @songs = Song.all
  end

end
