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