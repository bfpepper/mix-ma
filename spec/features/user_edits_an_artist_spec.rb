require 'rails_helper'

RSpec.feature "User can edit an artists info" do
  scenario "A user can edit an existing artist's info" do
    artist = Artist.create(name:"Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artist_path(artist)

    click_on "Edit"

    fill_in "artist_name", with: "Jill"

    click_on "Update Artist"

    expect(current_path).to eq(artist_path(artist))
    expect(page).to have_content("Jill")
  end
end
