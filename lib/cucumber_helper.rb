require 'capybara/cucumber'
require 'rspec/expectations'

Capybara.default_driver = :testingbot

Capybara.app_host = "https://trello.com"
Capybara.run_server = true
Capybara.default_wait_time = 5