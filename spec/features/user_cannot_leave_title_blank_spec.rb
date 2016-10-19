require 'rails_helper'

RSpec.feature "a user MUST enter a title for a sing to save" do
  scenario "a user will get a message saying that they must enter a title" do

    artist = Artist.create(name:"Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artist_path(artist)

    click_on "New song"
    click_on "Create Song"
    expect(page).to have_content("Title can't be blank")
  end
end
