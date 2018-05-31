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
  
  # Returns true if a test user is logged in.
  def is_logged_in?
    !session[:user_id].nil?
  end
end

class ActionDispatch::IntegrationTest

  #Log in as a aparticular user
  def log_in_as(user, password: 'password', remember_me: '1')
    post login_path, params:{ session: { email: user.email,
                                         password: 'password',
                                         remember_me: remember_me } }
  end

end
