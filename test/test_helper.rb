ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

# TRIED THIS
# ----------
# ENV["RAILS_ENV"] ||= "test"
# require_relative "../config/environment"
# require "rails/test_help"

# require "capybara/rails"
# require "capybara/minitest"

# Capybara.register_driver :custom_chrome_headless do |app|
#   options = Selenium::WebDriver::Chrome::Options.new
#   options.add_argument("--headless")
#   options.add_argument("--disable-gpu")
#   options.add_argument("--window-size=1400,1400")

#   Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
# end

# class ActiveSupport::TestCase
#   # Run tests in parallel with specified workers
#   parallelize(workers: :number_of_processors)

#   # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
#   fixtures :all
# end

