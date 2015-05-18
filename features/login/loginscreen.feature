@login
Feature: Login feature

  Background:Launching the App
    Given I launch the app
    And I am in login screen

  Scenario: Verification of screen elements
    And I should see "Skype" logo
    And I should see "sign in" text
    And I should see "Skype Name" button
    And I should see "Microsoft Account" button
    And I should see "create account" button

  Scenario Outline: Login Feature with invalid credentials
    And I press "Skype Name" button
    And I enter "<user>" username
    When I enter "<pass>" password
    Then I should see "Oops, please check your details." message

    Examples:
      | user | pass |
      | abc  | 123  |
      | xyz  | 456  |

  @sign_out
  Scenario: Login Feature with valid credentials
    And I press "Skype Name" button
    And I enter "Valid" username
    And I enter "Valid" password
    When I press "Sign in" button
    Then I should see welcome screen