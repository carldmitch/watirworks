@step_tests
@button
@2019

Feature: Tests for button_steps

  @button_step_1
  Scenario: 1 When I click on the button "(.*)"
    Given I am on the "http://www.mkyong.com/wp-content/uploads/jQuery/jQuery-disabled-submit-button-after-clicked.html?#" page
    Then the button "input[type=submit]" should be enabled
    When I click on the button "input[type=submit]"
    When I pause for "2" seconds
    Then the button "input[type=submit]" should not be enabled

  @button_step_2 @cleanbrowser
  Scenario: 2 Then the button "(.*)" should be enabled
    Given I am on the "http://www.mkyong.com/wp-content/uploads/jQuery/jQuery-disabled-submit-button-after-clicked.html?#" page
    Then the button "input[type=submit]" should be enabled
    When I click on the button "input[type=submit]"
    When I pause for "2" seconds
    Then the button "input[type=submit]" should not be enabled

  @button_step_3
  Scenario: 3 Then the button "(.*)" should not be enabled
    Given I am on the "http://www.mkyong.com/wp-content/uploads/jQuery/jQuery-disabled-submit-button-after-clicked.html?#" page
    Then the button "input[type=submit]" should be enabled
    When I click on the button "input[type=submit]"
    When I pause for "2" seconds
    Then the button "input[type=submit]" should not be enabled

# if you make any changes to the button_steps.rb you should run the following test
#
# => cucumber -t @button
# => cucumber features/step_tests/button_tests.feature
#
