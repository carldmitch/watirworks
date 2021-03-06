@step_tests
@execute_script @js

Feature: Tests for execute_script steps

  @execute_script_step_1
  Scenario: 1 When I scroll up the page "(.*)" pixels
    Given I am on the "www.sharecare.com" page
    When I scroll down the page "500" pixels
    Then I pause for "2" seconds
    When I scroll up the page "250" pixels
    Then I pause for "2" seconds

  @execute_script_step_2
  Scenario: 2 When I scroll down the page "(.*)" pixels
    Given I am on the "www.sharecare.com" page
    When I scroll down the page "750" pixels
    Then I pause for "2" seconds
    When I scroll down the page "500" pixels
    Then I pause for "2" seconds
    When I scroll up the page "800" pixels
    Then I pause for "2" seconds
    When I scroll up the page "200" pixels
    Then I pause for "2" seconds
