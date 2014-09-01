@step_tests
@select_list

Feature: Tests for select_list

  Scenario: 1 When I select "(.*)" from the dropdown "(\w{2,9})=(.*)"
    Given I am on the "bit.ly/watir-webdriver-demo" page
      When I select "Ruby" from the dropdown "id=entry_1"
        Then the dropdown "id=entry_1" should have "Ruby" selected
  
  Scenario: 2 Then the value of the dropdown "(.*)" should be "(.*)"
    Given I am on the "bit.ly/watir-webdriver-demo" page
        Then the value of the dropdown "id=entry_1" should be "Java"
      When I select "Ruby" from the dropdown "id=entry_1"
        Then the value of the dropdown "id=entry_1" should be "Ruby"
  
  Scenario: 3 Then the dropdown "(.*)" should have "(.*)" selected
    Given I am on the "bit.ly/watir-webdriver-demo" page
        Then the dropdown "id=entry_1" should have "Java" selected
      When I select "Ruby" from the dropdown "id=entry_1"
        Then the dropdown "id=entry_1" should have "Ruby" selected
  


