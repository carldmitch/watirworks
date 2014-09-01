@step_tests
@alert

Feature: Tests for alert_steps

  @alert_step_1
  Scenario: When I dismiss the alert
    Given I am on the "http://the-internet.herokuapp.com/javascript_alerts" page
      When I click on the button "text=Click for JS Alert"
      When I dismiss the alert

  @alert_step_2
  Scenario: When I confirm the alert
    Given I am on the "http://the-internet.herokuapp.com/javascript_alerts" page
      When I click on the button "text=Click for JS Alert"
        Then I display the alert text
        Then the alert should exist
      When I confirm the alert

  @alert_step_3
  Scenario: Then the alert should exist
    Given I am on the "http://the-internet.herokuapp.com/javascript_alerts" page
      When I click on the button "text=Click for JS Confirm"
        Then the alert should exist
      When I dismiss the alert

  @alert_step_4
  Scenario: Then I display the alert text
    Given I am on the "http://the-internet.herokuapp.com/javascript_alerts" page
      When I click on the button "text=Click for JS Prompt"
        Then I display the alert text
      When I dismiss the alert

# if you make any changes to the alert_steps.rb you should run the following test
#
# => cucumber -s -t @alert
#
