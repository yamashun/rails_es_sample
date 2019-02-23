FactoryBot.define do
  factory :manga do
    association :category, factory: :category
    association :author, factory: :author
    association :publisher, factory: :publisher
    title { 'タイトル' }
    description { '説明文' }
  end
end
