@step_tests
@checkbox

Feature: Tests for checkbox_steps

@checkbox_step_1
  Scenario: 1 When I set the checkbox "(.*)" 
    Given I am on the "bit.ly/watir-webdriver-demo" page
        Then the checkbox "id=group_3_1" should not be set
      When I set the checkbox "id=group_3_1"
        Then the checkbox "id=group_3_1" should be set
      When I set the checkbox "id=group_3_1"
  
@checkbox_step_2
  Scenario: 2 When I clear the checkbox "(.*)" 
    Given I am on the "bit.ly/watir-webdriver-demo" page
        Then the checkbox "id=group_3_1" should not be set
      When I set the checkbox "id=group_3_1"
        Then the checkbox "id=group_3_1" should be set
      When I clear the checkbox "id=group_3_1"
      When I clear the checkbox "id=group_3_1"
        Then the checkbox "id=group_3_1" should not be set
  
@checkbox_step_3
  Scenario: 3 Then the checkbox "(.*)" should be set 
    Given I am on the "bit.ly/watir-webdriver-demo" page
        Then the checkbox "id=group_3_1" should not be set
      When I set the checkbox "id=group_3_1"
        Then the checkbox "id=group_3_1" should be set
  
@checkbox_step_4
  Scenario: 4 Then the checkbox "(.*)" should not be set 
    Given I am on the "bit.ly/watir-webdriver-demo" page
        Then the checkbox "id=group_3_1" should not be set
      When I set the checkbox "id=group_3_1"
        Then the checkbox "id=group_3_1" should be set
  
