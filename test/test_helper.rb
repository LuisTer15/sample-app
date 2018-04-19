ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include ApplicationHelper
  
  def full_title(string="")
    if string.empty?
      "Ruby on Rails Tutorial Sample App"
    else
      "#{string} | Ruby on Rails Tutorial Sample App"
    end
  end
end
