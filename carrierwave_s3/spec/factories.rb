FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "jeff#{n}" }
    after(:build) do |user, eval|
      user.images << build(:image)
    end
  end

  factory :image do
    avatar File.open(File.join(Rails.root, '/spec/support/images/blueapron.jpg'))
  end
end
