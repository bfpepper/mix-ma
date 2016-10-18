require 'rails_helper'

RSpec.feature 'User can view all artists spec' do
  scenario "a user can see all artits" do
    Artist.create(name:"Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    Artist.create(name:"Joe Smith", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artists_path

    expect(page).to have_content("Joe Smith")
    expect(page).to have_content("Bob Marley")
  end
end
