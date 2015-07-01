FactoryGirl.define do
  factory :user do
    name 'Foo Bar'
    sequence(:password) { |n| "passwordNumber#{n}" }
    sequence(:email) { |n| "foo_bar_#{n}@example.com" }
  end
end
