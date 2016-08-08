FactoryGirl.define do
  factory :movie do
    title "The wolf of wall street"
    price_code 1

    initialize_with { new(title, price_code) }
  end
end
