FactoryGirl.define do
  factory :song do
    title 
    artist
  end
  
  sequence :title do |n| 
    "Song #{n}"
  end
end