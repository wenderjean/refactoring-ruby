require_relative 'prices/regular_price'
require_relative 'prices/new_release_price'
require_relative 'prices/childrens_price'

class Movie
    REGULAR = 0
    NEW_RELEASE = 1
    CHILDRENS = 2

    attr_reader :title
    attr_accessor :price_code
    attr_accessor :price

    def initialize(title, price_code)
      @title, self.price_code = title, price_code
    end

    def charge(days_rented)
      @price.charge(days_rented)
    end

    def frequent_renter_points(days_rented)
      @price.frequent_renter_points(days_rented)
    end
end
