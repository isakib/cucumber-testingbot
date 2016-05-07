require_relative '../../lib/cucumber_helper'

When /^I am logged in with username "([^"]*)" and password "([^"]*)"$/ do |email, password|
  steps
  '
    When I am on the "/wp-login.php?" page
    And I fill in "Username" with "admin"
    And I fill in "Password" with "1"
    And I click on "Log In" button
  '
end
