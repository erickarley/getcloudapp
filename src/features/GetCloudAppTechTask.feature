Feature: Technical task assignment for Erick Arley
    As a SDET
    I want to be able to create the technical tests for the assignment

    Scenario: Negative tests: Not valid format for password validation for sign up / LOCATORS EXPOSED
        Given I open the url "https://www.getcloudapp.com/"
        And   I click on the element ".jet-menu-title*=Log"
        And   I click on the link "Sign up for free"
        And   I clear the inputfield "#email"
        And   I add "WrongEmail@email.com" to the inputfield "#email"
        And   I clear the inputfield "#password"
        And   I add "WrongPassword" to the inputfield "#password"
        And   I click on the button "[name='commit']"
        And   I pause for 3000ms
        Then  I expect that element ".flash.alert.alert-danger" is displayed

    Scenario: Negative tests: Existing user - SIGN UP / LOCATORS EXPOSED
        Given I open the url "https://www.getcloudapp.com/"
        And   I click on the element ".jet-menu-title*=Log"
        And   I click on the link "Sign up for free"
        And   I clear the inputfield "#email"
        And   I add "erarley@hotmail.com" to the inputfield "#email"
        And   I clear the inputfield "#password"
        And   I add "Techtask1" to the inputfield "#password"
        And   I click on the button "[name='commit']"
        And   I pause for 3000ms
        Then  I expect that element "//*[.='Validation failed: Email has already been taken']" is displayed

    Scenario: Negative tests: Existing user - SIGN UP / LOCATORS EXPOSED
        Given I open the url "https://www.getcloudapp.com/"
        And   I click on the element ".jet-menu-title*=Log"
        And   I clear the inputfield "#email"
        And   I add "erarley@hotmail.com" to the inputfield "#email"
        And   I clear the inputfield "#password"
        And   I add "WrongPassword1" to the inputfield "#password"
        And   I click on the button "[name='commit']"
        And   I pause for 3000ms
        Then  I expect that element "//*[.='Invalid email / password combination']" is displayed

    Scenario: Positive tests: Log in with existing user - LOG IN / LOCATORS EXPOSED
        Given I open the url "https://www.getcloudapp.com/"
        And   I click on the element ".jet-menu-title*=Log"
        And   I clear the inputfield "#email"
        And   I add "erarley@hotmail.com" to the inputfield "#email"
        And   I clear the inputfield "#password"
        And   I add "Techtask1" to the inputfield "#password"
        And   I click on the button "[name='commit']"
        And   I pause for 3000ms
        Then  I expect that element "//a[.='All files']" is displayed
        When  I open the url "https://share.getcloudapp.com/logout"
        And   I pause for 1000ms
        Then  I expect that element "//*[.='Successfully Logged Out']" is displayed

    Scenario: Positive tests: Log in and Log Out with existing user - LOG OUT / LOCATORS EXPOSED
        Given I open the url "https://www.getcloudapp.com/"
        And   I click on the element ".jet-menu-title*=Log"
        And   I clear the inputfield "#email"
        And   I add "erarley@hotmail.com" to the inputfield "#email"
        And   I clear the inputfield "#password"
        And   I add "Techtask1" to the inputfield "#password"
        And   I click on the button "[name='commit']"
        And   I pause for 3000ms
        Then  I expect that element "//a[.='All files']" is displayed
        When  I open the url "https://share.getcloudapp.com/logout"
        And   I pause for 1000ms
        Then  I expect that element "//*[.='Successfully Logged Out']" is displayed

    Scenario: Positive tests: Go to settings -> profile and update the avatar - AVATAR CHANGE / LOCATORS EXPOSED
        Given I open the url "https://www.getcloudapp.com/"
        And   I click on the element ".jet-menu-title*=Log"
        And   I clear the inputfield "#email"
        And   I add "erarley@hotmail.com" to the inputfield "#email"
        And   I clear the inputfield "#password"
        And   I add "Techtask1" to the inputfield "#password"
        And   I click on the button "[name='commit']"
        And   I pause for 3000ms
        Then  I expect that element "//a[.='All files']" is displayed
        When  I open the profile menu item "Settings"
        And   I pause for 3000ms
        And   I click on the link "Profile"
        #  FIRST CHANGE IN THE AVATAR
        And   I clear the inputfield "#user_name"
        And   I add "Hello Internet" to the inputfield "#user_name"
        And   I clear the inputfield "#user_company"
        And   I add "Testing" to the inputfield "#user_company"
        When  I select the option with the value "engineering" for element "#user_profile"
        And   I click on the button "[name='commit']"
        And   I pause for 1000ms
        Then  I expect that element "//*[.='Account updated successfully']" is displayed
        #  SECOND CHANGE IN THE AVATAR
        And   I clear the inputfield "#user_name"
        And   I add "Goodbye Test" to the inputfield "#user_name"
        And   I clear the inputfield "#user_company"
        And   I add "Testing" to the inputfield "#user_company"
        When  I select the option with the value "sales" for element "#user_profile"
        And   I click on the button "[name='commit']"
        And   I pause for 1000ms
        Then  I expect that element "//*[.='Account updated successfully']" is displayed
        When  I open the url "https://share.getcloudapp.com/logout"
        And   I pause for 1000ms
        Then  I expect that element "//*[.='Successfully Logged Out']" is displayed


