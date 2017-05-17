require 'rails_helper'

RSpec.feature "When a user is on a playlist page" do
  scenario "they can edit that playlist" do
    playlist = create(:playlist)
    song1 = create(:song)
    song2 = playlist.songs.first
    new_name = "New Playlist Name"

    visit playlist_path(playlist)
    click_on "Edit"
    fill_in "Name", with: new_name
    check("song-#{song1.id}")
    uncheck("song-#{song2.id}")
    click_on "Update Playlist"

    expect(page).to have_content new_name
    expect(page).to have_content song1.title
    expect(page).to_not have_content song2.title


  end
end











# As a user
# Given that a playlist and songs exist in the database
# When I visit that playlist's show page
# And I click on "Edit"
# And I enter a new playlist name
# And I select an additional song
# And I uncheck an existing song
# And I click on "Update Playlist"
# Then I should see the playlist's updated name
# And I should see the name of the newly added song
# And I should not see the name of the removed song