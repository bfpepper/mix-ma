module ArtistsHelper
  def find_artist
    @artist = Artist.find(params[:id])
  end
end
