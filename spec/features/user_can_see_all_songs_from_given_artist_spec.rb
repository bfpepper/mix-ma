require 'rails_helper'

RSpec.feature "USer can see all songs from an artist" do
  scenario "A user can see an alphabitized list of all an artist's songs." do

    song1, song2 = create_list(:song, 2)

    visit artist_path(song1.artist)

    click_on "View Songs"

    expect(page).to have_content(song1.title)

  end
end
