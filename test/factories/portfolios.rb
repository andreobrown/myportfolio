FactoryBot.define do
  factory :portfolio do
    title { Faker::StarWars.call_sign }
    subtitle { Faker::StarWars.specie }
  end
end
