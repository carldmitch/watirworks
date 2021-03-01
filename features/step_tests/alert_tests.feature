@step_tests
@alert
@2019

Feature: Tests for alert_steps

  @alert_step_1
  Scenario: When I dismiss the alert
    Given I am on the "http://the-internet.herokuapp.com/javascript_alerts" page
    When I click on the button "button[onclick='jsAlert()']"
    When I dismiss the alert

  @alert_step_2
  Scenario: When I confirm the alert
    Given I am on the "http://the-internet.herokuapp.com/javascript_alerts" page
    When I click on the button "button[onclick='jsAlert()']"
    Then I display the alert text
    Then the alert should exist
    When I confirm the alert

  @alert_step_3
  Scenario: Then the alert should exist
    Given I am on the "http://the-internet.herokuapp.com/javascript_alerts" page
    When I click on the button "button[onclick='jsConfirm()']"
    Then the alert should exist
    When I dismiss the alert

  @alert_step_4
  Scenario: Then I display the alert text
    Given I am on the "http://the-internet.herokuapp.com/javascript_alerts" page
    When I click on the button "button[onclick='jsPrompt()']"
    Then I display the alert text
    When I dismiss the alert
