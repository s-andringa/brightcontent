FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end
 
  factory :user, class: Brightcontent::User do
    email
    password "password"
    password_confirmation "password"
  end

  factory :blog do
    name "Blogname"
    body "Inhoud"
  end
end