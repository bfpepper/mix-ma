require 'rails_helper'

RSpec.feature "User can delete an artist" do
  scenario "A user can delete a given artist" do
    artist1 = Artist.create(name:"Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    artist2 = Artist.create(name:"Joe Smith", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artist_path(artist1)

    click_on "Delete"

    expect(current_path).to eq(artists_path)
    expect(page).to_not have_content("Bob Marley")
  end
end
