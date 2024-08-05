@lib-02
Feature: Logout from the application

    As a user, I should be able to logout from the app.

    #* AC1: user should log out from the homepage by clicking the “Log out”  button under the account name.


     Scenario Outline: User logs out from the application
         Given user logged in as a user with account name "<account_name>"
         When user click on the "<account name>" button
         When user click the "Log out" button under the "<account_name>"
         Then user should be redirected to the login page
         
 
         Examples:
         | account_name |
         | John Doe     |
         | Jane Smith   |
         | Test User    |
    #? Should there be more scenarios for this user story? Feel free to add more scenarios.