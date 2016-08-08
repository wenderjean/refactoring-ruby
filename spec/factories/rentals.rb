FactoryGirl.define do
  factory :rental do
    movie { build(:movie) }
    days_rented 10

    initialize_with { new(movie, days_rented) }
  end
end
