# FactoryGirl.define do
#   factory :artist do
#     name       "Bob Marley"
#     image_path "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
#   end

#   sequence :email do |n|
#     "artist#{n}"
#   end

#   factory :song do
#     title "One Love"
#     artist { Artist.first || association(:artist) }
#   end
# end
# end