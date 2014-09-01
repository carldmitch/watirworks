@step_tests
@button

Feature: Tests for button_steps

@button_step_1
  Scenario: 1 When I click on the button "(.*)"
    Given I am on the "http://www.mkyong.com/wp-content/uploads/jQuery/jQuery-disabled-submit-button-after-clicked.html?#" page
        Then the button "type=submit" should be enabled
      When I click on the button "text=Submit"
        Then the button "type=submit" should not be enabled

@button_step_2 @cleanbrowser
  Scenario: 2 Then the button "(\w{2,9})=(.*)" should be enabled
    Given I am on the "http://www.mkyong.com/wp-content/uploads/jQuery/jQuery-disabled-submit-button-after-clicked.html?#" page
        Then the button "type=submit" should be enabled
      When I click on the button "text=Submit"
        Then the button "type=submit" should not be enabled

@button_step_3
  Scenario: 3 Then the button "(\w{2,9})=(.*)" should not be enabled
      Given I am on the "http://www.mkyong.com/wp-content/uploads/jQuery/jQuery-disabled-submit-button-after-clicked.html?#" page
          Then the button "type=submit" should be enabled
        When I click on the button "text=Submit"
          Then the button "type=submit" should not be enabled
