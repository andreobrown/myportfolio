FactoryBot.define do
  factory :blog do
    sequence(:title) { |n| "Blog Post #{n}"} 
    body "Some random text"
    topic
  end
end
