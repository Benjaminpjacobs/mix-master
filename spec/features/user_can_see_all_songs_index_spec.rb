require "rails_helper"

RSpec.feature "When user views all songs" do 
  scenario "they are in alphabetical order and linked to individual pages" do
    artist = create(:artist)
    song1 = create(:song)
    song2 = create(:song, title: "No Woman No Cry")
    song3 = create(:song, title: "Exodus")
    song4 = create(:song, title: "Jammin")


    visit songs_path
    expect(current_path).to eq('/songs')
    expect(page).to_not have_content(artist.name)
    expect(page.find('li:nth-child(1)')).to have_content('Exodus')
    expect(page.find('li:nth-child(2)')).to have_content('Jammin')
    expect(page.find('li:nth-child(3)')).to have_content('No Woman No Cry')
    expect(page.find('li:nth-child(4)')).to have_content('One Love')


    expect(page).to have_link song1.title, href: song_path(song1)
    expect(page).to have_link song2.title, href: song_path(song2)
    expect(page).to have_link song3.title, href: song_path(song3)
    expect(page).to have_link song4.title, href: song_path(song4)

    # save_and_open_page
  end
end





# # Given that songs exist in the database
# # When I visit the songs index ('/songs')
# # Then I should see the titles of all songs in the database sorted alphabetically
# # And the titles should each link the individual song page