@lib-01
Feature: Login to the application
  As a user, I want to login so that I can access the app's main features.


  Background:
    Given user is already on the login page

  @lib-01 @AC1
  Scenario Outline: Verify users can login with valid credentials
    When user enters valid username '<user-type>'
    And user enters valid password '<user-type>'
    And user clicks the login button
    Then user login succussfully to the homepage
    Examples:
      | user-type |
      | admin     |
      | student   |


  @lib-01 @AC2
  Scenario Outline: Verify users see error message for invalid credentials
    When user enters invalid username '<user-type>'
    And user enters invalid password '<user-type>'
    And user clicks the login button
    Then user should see "Sorry, Wrong Email or Password" error pop-up message
    Examples:
      | user-type  |
      | admin1     |
      | student1   |


  @lib-01 @AC3
  Scenario: Verify users see error message when logging in without any credentials
    When user clicks the login button
    Then user should see "This field is required." error pop-up message for both username and password fields


  @lib-01 @AC4
Scenario: Verify users cannot log in without a password
    When the user enters a valid username '<user-type>'
    And the user clicks the login button
    Then the user should see error message as "Error: Please enter a valid password."


  @lib-01 @AC5
Scenario: Verify users cannot log in without a username
  When user enters a valid password '<valid-password>'
  And user clicks the login button
  Then user should see error message as "This field is required."
