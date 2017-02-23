FactoryGirl.define do
  factory :item do
    name { Faker::Hipster.unique.words(2).join("") }
    description Faker::Hipster.sentence
    image_url "http://remoran.com/portfolio/clipart/#jp-carousel-240933"
  end
end
