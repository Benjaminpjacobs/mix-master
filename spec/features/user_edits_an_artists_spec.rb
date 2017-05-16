require "rails_helper"

RSpec.feature "User can edit an artist" do
  scenario "user edits artist from show page" do
    artist = Artist.create!(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg" )
    artist_new_name = "Robert Marley"

    visit "/artists/#{artist.id}"
    click_on "Edit"
    fill_in "artist_name", with: artist_new_name
    click_on "Update Artist"

    expect(page).to have_content artist_new_name
    expect(page).to have_css ("img[src=\"#{artist.image_path}\"]")
  end
end

