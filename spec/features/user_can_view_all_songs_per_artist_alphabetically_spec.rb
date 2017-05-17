# require 'rails_helper'

# RSpec.feature "User visits artist page and clicks view songs" do
#   scenario "they see them all alphabetically" do
#     artist = create(:artist)
#     song1 = create(:song)
#     song2 = create(:song, title: "No Woman No Cry")
#     song3 = create(:song, title: "Exodus")
#     song4 = create(:song, title: "Jammin")

#     visit artist_path(artist)
#     click_on "View songs"
#     # save_and_open_page
#     expect(current_path).to eq("/artists/#{artist.id}/songs")
#     expect(page.find('li:nth-child(1)')).to have_content('Exodus')
#     expect(page.find('li:nth-child(2)')).to have_content('Jammin')
#     expect(page.find('li:nth-child(3)')).to have_content('No Woman No Cry')
#     expect(page.find('li:nth-child(4)')).to have_content('One Love')

#     expect(page).to have_link song1.title, href: song_path(song1)
#     expect(page).to have_link song2.title, href: song_path(song2)
#     expect(page).to have_link song3.title, href: song_path(song3)
#     expect(page).to have_link song4.title, href: song_path(song4)
#   end
# end












# # Given that an artist and that artist's associated songs exist in the database
# # When I visit the individual artist page
# # And I click "View songs"
# # Then I should see the song titles for that specific artist sorted alphabetically
# # And each title should link to the individual song page