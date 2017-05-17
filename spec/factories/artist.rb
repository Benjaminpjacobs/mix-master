FactoryGirl.define do
  factory :artist do
    name
    image_path "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
  end

  sequence :name do |n| 
    "Artist #{n}"
  end
  

end