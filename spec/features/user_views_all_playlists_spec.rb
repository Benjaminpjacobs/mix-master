require 'rails_helper'

RSpec.feature "When user goes to playlist index" do
  scenario "they can see all playlists" do 
    playlist1, playlist2, playlist3 = create_list(:playlist, 3)

    visit playlists_path
    expect(page.find('li:nth-child(1)')).to have_link playlist1.name, href: playlist_path(playlist1)
    expect(page.find('li:nth-child(2)')).to have_link playlist2.name, href: playlist_path(playlist2)
    expect(page.find('li:nth-child(3)')).to have_link playlist3.name, href: playlist_path(playlist3)

  end
end
