require 'support/factory_girl'
require 'simplecov'

SimpleCov.start

%w{ lib/movie lib/rental lib/customer }.each do |file|
  require File.expand_path file
end
