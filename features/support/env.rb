require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'selenium/webdriver'
require 'testingbot/cucumber'

if ENV['TESTINGBOT_BROWSER']
  caps = {}
    caps[:browser] = ENV['TESTINGBOT_BROWSER'] || "chrome"
  caps[:version] = ENV['TESTINGBOT_BROWSERVERSION'] || "35"
  caps[:platform] = ENV['TESTINGBOT_BROWSEROS'] || :WIN10
  Capybara.default_driver = :testingbot
  Capybara.register_driver :testingbot do |app|
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.timeout = 120
    Capybara::Selenium::Driver.new(app,
                                   :browser => :remote,
                                   :url => "http://clientkey:clientsecretkey@hub.testingbot.com:4444/wd/hub",
                                   :http_client => client,
                                   :desired_capabilities => caps)
end

else
  caps = Selenium::WebDriver::Remote::Capabilities.chrome
  caps.version = "35"
  caps.platform = :WIN10
  Capybara.default_driver = :testingbot
  Capybara.register_driver :testingbot do |app|
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.timeout = 120
    Capybara::Selenium::Driver.new(app,
                                   :browser => :remote,
                                   :url => "http://clientkey:clientsecretkey@hub.testingbot.com:4444/wd/hub",
                                   :http_client => client,
                                   :desired_capabilities => caps)
  end
end

#Few Formats requires to be changed before test execution
#  caps = Selenium::WebDriver::Remote::Capabilities.internet_explorer
#  caps = Selenium::WebDriver::Remote::Capabilities.chrome
#  caps = Selenium::WebDriver::Remote::Capabilities.firefox
#  caps = Selenium::WebDriver::Remote::Capabilities.safari

#OS Name:
#:WIN10 
#:YOSEMITE
#:CAPITAN

#Browsername:
#internet explorer
#safari
#chrome
#firefox

#TESTINGBOT_BROWSERVERSION = 35,36 or mention any specific browser. 

#OS / Platform:
#:WIN10, 
#:YOSEMITE
