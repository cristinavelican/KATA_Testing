require 'capybara'
require 'rspec'
require 'capybara/dsl'


Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.default_selector = :css
Capybara.default_max_wait_time = 8


class Screen
  include Capybara::DSL
  include RSpec::Matchers
end

def build_page name_of_my_page
  name_of_my_page.new
end

module Helpers
  Capybara.register_driver :selenium_firefox do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox, marionette: true)
  end
end



World(Capybara::DSL, Helpers)