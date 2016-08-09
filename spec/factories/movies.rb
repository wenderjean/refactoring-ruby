FactoryGirl.define do
  factory :movie do
    title "The wolf of wall street"
    price_code Movie::NEW_RELEASE

    initialize_with { new(title, price_code) }

    after(:build) do |movie|
      movie.price = NewReleasePrice.new
    end
  end
end
