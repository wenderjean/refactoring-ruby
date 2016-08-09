require 'erb'
require_relative 'template'

class Customer
  attr_reader :name
  attr_reader :rentals

  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rental(arg)
    @rentals << arg
  end

  def statement
    Template.render('statement.txt.erb', binding)
  end

  def html_statement
    Template.render('statement.html.erb', binding)
  end

  private

  def total_charge
    @rentals.map(&:charge).reduce(:+)
  end

  def frequent_renter_points
    @rentals.map(&:frequent_renter_points).reduce(:+)
  end
end
