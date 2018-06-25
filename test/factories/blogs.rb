FactoryBot.define do
  factory :blog do
    title { Faker::DrWho.unique.quote }
    body { Faker::Lorem.paragraphs(4, true) }
    topic
  end
end
