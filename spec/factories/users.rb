FactoryGirl.define do
  factory :user do
    name 'Foo Bar'
    sequence(:email) { |n| "foo_bar_#{n}@example.com" }
  end
end
