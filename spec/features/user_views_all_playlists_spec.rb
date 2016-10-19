require 'rails_helper'

RSpec.feature "user can view all playlists" do
  scenario "A user can see all available playlists" do

    playlists = create_list(:playlist_with_songs, 2)

    visit playlists_path

    playlists.each do |playlist|
      expect(page).to have_link playlist.name, href: playlist_path(playlist)
    end
  end
end
