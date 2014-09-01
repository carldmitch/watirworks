@step_tests
@radio

Feature: Tests for radio_steps

  Scenario: 1 When I set the radio button "(\w{2,9})=(.*)"
    Given I am on the "bit.ly/watir-webdriver-demo" page
        Then the radio button "css=[value="A gem"]" should not be set
      When I set the radio button "css=[value="A gem"]"
        Then the radio button "css=[value="A gem"]" should be set
      When I set the radio button "css=[value="Both"]"
  
  Scenario: 2 Then the radio button "(\w{2,9})=(.*)" should be set
        Then the radio button "css=[value=Both]" should be set
  
  Scenario: 3 Then the radio button "(\w{2,9})=(.*)" should not be set
        Then the radio button "css=[value="A gem"]" should not be set
  
