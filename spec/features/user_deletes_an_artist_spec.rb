require "rails_helper"

RSpec.feature "User can delete an artist" do
  scenario "from show page user clicks delete" do
    artist = Artist.create!(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg" )

    visit "/artists/#{artist.id}"
    click_on "Delete"
    expect(current_path).to eq('/artists')
    expect(page).not_to have_content artist.name
  end
end








#     As a user
# Given that an artist exists in the database
# When I visit that artist's show page
# And I click on "Delete"
# Then I should be back on the artist index page
# Then I should not see the artist's name