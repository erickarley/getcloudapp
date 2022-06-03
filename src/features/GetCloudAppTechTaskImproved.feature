Feature: Technical task assignment for Erick Arley
    As a SDET
    I want to be able to create the technical tests for the assignment

    Scenario: Negative tests: Not valid format for password validation for sign up
        Given I open the site "/"
        And   I open the homepage menu item "Log in"
        And   I click on the link "Sign up for free"
        And   I login with user name "WrongEmail@email.com" and password "WrongPassword"
        Then  I expect the content of the alert to be "Password must be at least 8 characters long, contain uppercase and lowercase letters and a number." 

    Scenario: Negative tests: Existing user - SIGN UP
        Given I open the site "/"
        And   I open the homepage menu item "Log in"
        And   I click on the link "Sign up for free"
        And   I login with user name "erarley@hotmail.com" and password "Techtask1"
        Then  I expect the content of the alert to be "Email has already been taken"

    Scenario: Negative tests: Existing user - LOG IN
        Given I open the site "/"
        And   I open the homepage menu item "Log in"
        And   I login with user name "erarley@hotmail.com" and password "WrongPassword1"
        Then  I expect the content of the alert to be "Invalid email" 

    Scenario: Positive tests: Log in with existing user - LOG IN
        Given I open the site "/"
        And   I open the homepage menu item "Log in"
        And   I login with user name "erarley@hotmail.com" and password "Techtask1"
        Then  I expect the page to have the following text "Files"
        And   I pause for 1000ms
        When  I open the url "https://share.getcloudapp.com/logout"
       
    Scenario: Positive tests: Log in and Log Out with existing user - LOG OUT
        Given I open the site "/"
        And   I open the homepage menu item "Log in"
        And   I login with user name "erarley@hotmail.com" and password "Techtask1"
        Then  I expect the page to have the following text "Files"
        When  I open the url "https://share.getcloudapp.com/logout"
        Then  I expect the content of the alert to be "Successfully Logged Out"

    Scenario: Positive tests: Go to settings -> profile and update the avatar - AVATAR CHANGE
        Given I open the site "/"
        And   I open the homepage menu item "Log in"
        And   I login with user name "erarley@hotmail.com" and password "Techtask1"
        Then  I expect the page to have the following text "Files"
        When  I open the profile menu item "Settings"
        And   I click on the link "Profile"
        #  FIRST CHANGE IN THE AVATAR
        And   I set the Avatar details with name "Hello Internet", company "Testing", and role "engineering"
        Then  I expect the page to have the following text "Account updated successfully"
        #  SECOND CHANGE IN THE AVATAR
        And   I set the Avatar details with name "Goodbye Test", company "Automation", and role "sales"
        Then  I expect the page to have the following text "Account updated successfully"
        When  I open the url "https://share.getcloudapp.com/logout"
        Then  I expect the content of the alert to be "Successfully Logged Out"

    Scenario: Positive tests: Sign up of users randomly generated - SIGN UP 
        Given I open the site "/"
        And   I open the homepage menu item "Log in"
        And   I click on the link "Sign up for free"
        And   I sign up a random user 
        # Then  I expect the page to have the following text "Start creating now"
        When  I open the url "https://share.getcloudapp.com/dashboard"
        Then  I expect the content of the alert to be "Account created successfully"
        When  I open the url "https://share.getcloudapp.com/logout"
        Then  I expect the content of the alert to be "Successfully Logged Out"
        And   I login with the random user
        Then  I expect the page to have the following text "Files"
        When  I open the profile menu item "Settings"
        And   I click on the link "Profile"
        #  FIRST CHANGE IN THE AVATAR
        And   I set the Avatar details with name "Hello Internet", company "Testing", and role "engineering"
        Then  I expect the page to have the following text "Account updated successfully"
        When  I open the profile menu item "Sign out"
        Then  I expect the content of the alert to be "Successfully Logged Out"


