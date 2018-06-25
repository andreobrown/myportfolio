FactoryBot.define do
  factory :topic do
    sequence(:title) { |n| "Topic#{n}"}
  end
end
