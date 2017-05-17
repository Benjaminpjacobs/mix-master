require "rails_helper"

RSpec.feature "User can edit a song" do
  scenario "from the song page a user can edit a song" do
    artist = create(:artist)
    song = artist.songs.create(title: "One Love")
    new_song_title = "More Than One Love"

    visit song_path(song)
    click_on "Edit"
    fill_in "song_title", with: new_song_title
    click_on "Update song"

    expect(page).to have_content(new_song_title)
    expect(page).to have_link artist.name, href: artist_path(artist)
  end
end

    






#     As a user
# Given that a song exists in the database
# When I visit that song's show page
# And I click on "Edit"
# And I fill in a new title
# And I click on "Update Song"
# Then I should see the song's updated name
# Then I should see a link to the song artist's individual page