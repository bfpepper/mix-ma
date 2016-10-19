require 'rails_helper'

RSpec.feature "A User can edit song's info" do
  scenario "A user can update a song's info" do

    artist = create(:artist)
    song = create(:song)

    visit song_path(song)

    click_on "Edit"
    fill_in "song_title", with: song.title
    click_on "Update Song"

    expect(page).to have_content(song.title)
    expect(page).to have_link song.artist.name, href: artist_path(song.artist)
  end
end
