FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:realName)  { |n| "Person #{n} Bond" }
    sequence(:email) { |n| "person_#{n}@example.com"}   
    password "foobarx"
    password_confirmation "foobarx"


    factory :admin do
      admin true
    end
  end

  factory :link do
    URL "Lorem_ipsum.com"
    name "test url"
    user
  end
end
