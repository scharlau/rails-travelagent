ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

# this has been added here, but is not working correctly to test the 
# application with the  before_action :logged_in? uncommented in 
# the application controller

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  

  # Add more helper methods to be used by all tests here...
end
