FactoryGirl.define do
  factory :customer do
    name "Jordan Belfort"

    initialize_with { new(name) }
  end
end
