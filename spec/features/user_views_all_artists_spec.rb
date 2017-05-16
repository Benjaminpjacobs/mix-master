require "rails_helper"

RSpec.feature "User views all artists" do
  scenario "they view the artist index" do
    artist = Artist.create!(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg" )

    visit '/artists'

    expect(page).to have_content artist.name
  end
end


