@login
Feature: Login feature

  Scenario: Verification of screen elements
    Given I launch the app
    When I am in login screen
    Then I should see Skype logo
    And I should see "sign in" button
    And I should see "Skype Name" button
    And I should see "Microsoft Account" button
    And I should see "create account" button

  Scenario: Login Feature with valid username
    Given I am in Login Screen
    And I press "Skype Name" button
    And I enter "Valid" username
    And I enter "Valid" password
    When I press "Sign in" button
    Then I should get login

  Scenario: Login Feature with invalid username
    Given I am in Login Screen
    And I press "Skype Name" button
    And I enter "Invalid" username
    And I enter "Invalid" password
    When I should see "Oops, please check your details." message