FactoryGirl.define do
  sequence :playlist_name do |n| 
    "Playlist #{n}"
  end


  factory :playlist do
    name {generate(:playlist_name)}
    after(:create) do |playlist|
      5.times {create(:playlist_song, song: create(:song), playlist:playlist)}
    end
  end
  
end
