require 'rails_helper'

RSpec.feature "From the artist songs page" do 
  scenario "can delete a song and be returned to songs page" do

    artist = create(:artist)
    song1 = create(:song)
    song2 = create(:song, title: "No Woman No Cry")
    song3 = create(:song, title: "Exodus")
    song4 = create(:song, title: "Jammin")

    visit artist_songs_path(artist)
    first(:link, "Delete" ).click
    expect(current_path).to eq(artist_songs_path(artist))
    expect(page).to_not have_content(song3.title)
  end
end


# Given that an artist and a song for that artist exist in the database
# When I visit the artist's song index ('/artists/1/songs')
# And I click on "Delete"
# Then I should be back on whatever page I was on before (the artist's song index page)
# And I should not see the the song title