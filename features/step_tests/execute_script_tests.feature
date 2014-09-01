@step_tests
@execute_script @js

Feature: Tests for execute_script steps

@execute_script_step_1
  Scenario: 1 When I scroll up the page "(.*)" pixels
    Given I am on the "http://8tracks.com/carldmitch" page
      When I scroll down the page "100" pixels
      When I scroll up the page "50" pixels

@execute_script_step_2
  Scenario: 2 When I scroll down the page "(.*)" pixels
      When I scroll down the page "150" pixels
      When I scroll down the page "200" pixels
      When I scroll up the page "100" pixels
      When I scroll up the page "200" pixels
        Then I pause for "2" seconds
