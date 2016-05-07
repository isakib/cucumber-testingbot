  Feature: Registration at Trello
  As a new user, I would like to make a registration at trello.com
  As a logged in user, I would like to sign out from the trello.com system.

  Background: Just few things I would like to have.
  Given I want to maximize the windows of browser
  
Scenario: As a new user, I would like to make a registration at trello.com
  Given I am on the "/signup" page
  When I fill in "name" with "Hello Hi"
    And I fill in "email" with "testtwotwotwothree12@yopmail.com"
    And I fill in "password" with "test123456@"
  Then I wait for 2 seconds
    And I click on "signup" button
  Then I wait for 2 seconds
