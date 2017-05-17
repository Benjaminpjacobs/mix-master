require 'rails_helper'

RSpec.feature "When user visits playlist path" do
  scenario "they can create a new playlist" do
    song1, song2, song3 = create_list(:song, 3)

    playlist_name = "New Playlist"

    visit playlists_path
    click_on "New Playlist"
    fill_in "playlist_name", with: playlist_name
    check("song-#{song1.id}")
    check("song-#{song3.id}")
    click_on "Create Playlist"

    expect(page).to have_content playlist_name
    expect(page.find('li:nth-child(1)')).to have_link song1.title, href: song_path(song1)
    expect(page.find('li:nth-child(2)')).to have_link song3.title, href: song_path(song3)

  end
end



# As a user
# Given that songs and artists exist in the database
# When I visit the playlists path
# And I click "New playlist"
# And I fill in a name
# And I select the songs for the playlist
# And I click "Create Playlist"
# Then I see the playlist title
# And I see the titles of all songs in that playlist
# And the titles should link to the individual song pages